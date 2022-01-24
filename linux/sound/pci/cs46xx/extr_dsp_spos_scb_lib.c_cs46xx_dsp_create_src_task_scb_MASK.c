#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct snd_cs46xx {TYPE_2__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct TYPE_3__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dsp_src_task_scb {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; unsigned int member_8; unsigned int member_9; int member_11; int member_12; int member_13; int member_14; int member_21; unsigned int member_22; TYPE_1__ member_23; scalar_t__ member_20; int /*<<< orphan*/  member_19; int /*<<< orphan*/  member_18; int /*<<< orphan*/  member_17; int /*<<< orphan*/  member_16; int /*<<< orphan*/  member_15; scalar_t__ member_10; } ;
struct dsp_spos_instance {int /*<<< orphan*/ * s16_up; int /*<<< orphan*/  dac_volume_left; int /*<<< orphan*/  dac_volume_right; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int GOF_PER_SEC ; 
 scalar_t__ RSCONFIG_MODULO_32 ; 
 scalar_t__ RSCONFIG_MODULO_8 ; 
 scalar_t__ RSCONFIG_SAMPLE_16STEREO ; 
 int /*<<< orphan*/  SYMBOL_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int,int) ; 
 struct dsp_scb_descriptor* FUNC1 (struct snd_cs46xx*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dsp_scb_descriptor*,int) ; 
 struct dsp_scb_descriptor* FUNC2 (struct snd_cs46xx*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct dsp_scb_descriptor*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct snd_cs46xx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

struct dsp_scb_descriptor * 
FUNC7(struct snd_cs46xx * chip, char * scb_name,
			       int rate,
                               u16 src_buffer_addr,
                               u16 src_delay_buffer_addr, u32 dest,
                               struct dsp_scb_descriptor * parent_scb,
                               int scb_child_type,
	                       int pass_through)
{

	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	struct dsp_scb_descriptor * scb;
	unsigned int tmp1, tmp2;
	unsigned int phiIncr;
	unsigned int correctionPerGOF, correctionPerSec;

	FUNC4(chip->card->dev, "dsp_spos: setting %s rate to %u\n",
		scb_name, rate);

	/*
	 *  Compute the values used to drive the actual sample rate conversion.
	 *  The following formulas are being computed, using inline assembly
	 *  since we need to use 64 bit arithmetic to compute the values:
	 *
	 *  phiIncr = floor((Fs,in * 2^26) / Fs,out)
	 *  correctionPerGOF = floor((Fs,in * 2^26 - Fs,out * phiIncr) /
	 *                                   GOF_PER_SEC)
	 *  ulCorrectionPerSec = Fs,in * 2^26 - Fs,out * phiIncr -M
	 *                       GOF_PER_SEC * correctionPerGOF
	 *
	 *  i.e.
	 *
	 *  phiIncr:other = dividend:remainder((Fs,in * 2^26) / Fs,out)
	 *  correctionPerGOF:correctionPerSec =
	 *      dividend:remainder(ulOther / GOF_PER_SEC)
	 */
	tmp1 = rate << 16;
	phiIncr = tmp1 / 48000;
	tmp1 -= phiIncr * 48000;
	tmp1 <<= 10;
	phiIncr <<= 10;
	tmp2 = tmp1 / 48000;
	phiIncr += tmp2;
	tmp1 -= tmp2 * 48000;
	correctionPerGOF = tmp1 / GOF_PER_SEC;
	tmp1 -= correctionPerGOF * GOF_PER_SEC;
	correctionPerSec = tmp1;

	{
		struct dsp_src_task_scb src_task_scb = {
			0x0028,0x00c8,
			0x5555,0x0000,
			0x0000,0x0000,
			src_buffer_addr,1,
			correctionPerGOF,correctionPerSec,
			RSCONFIG_SAMPLE_16STEREO + RSCONFIG_MODULO_32,  
			0x0000,src_delay_buffer_addr,                  
			0x0,                                            
			0x080,(src_delay_buffer_addr + (24 * 4)),
			0,0, /* next_scb, sub_list_ptr */
			0,0, /* entry, this_spb */
			RSCONFIG_SAMPLE_16STEREO + RSCONFIG_MODULO_8,
			src_buffer_addr << 0x10,
			phiIncr,
			{ 
				0xffff - ins->dac_volume_right,0xffff - ins->dac_volume_left,
				0xffff - ins->dac_volume_right,0xffff - ins->dac_volume_left
			}
		};
		
		if (ins->s16_up == NULL) {
			ins->s16_up =  FUNC3 (chip,"S16_UPSRC",
								 SYMBOL_CODE);
			
			if (ins->s16_up == NULL) {
				FUNC5(chip->card->dev,
					"dsp_spos: symbol S16_UPSRC not found\n");
				return NULL;
			}    
		}
		
		/* clear buffers */
		FUNC0 (chip,src_buffer_addr,8);
		FUNC0 (chip,src_delay_buffer_addr,32);
				
		if (pass_through) {
			/* wont work with any other rate than
			   the native DSP rate */
			FUNC6(rate != 48000);

			scb = FUNC2(chip,scb_name,(u32 *)&src_task_scb,
							    dest,"DMAREADER",parent_scb,
							    scb_child_type);
		} else {
			scb = FUNC1(chip,scb_name,(u32 *)&src_task_scb,
						      dest,ins->s16_up,parent_scb,
						      scb_child_type);
		}


	}

	return scb;
}