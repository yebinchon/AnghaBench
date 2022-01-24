#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_CSO_ALPHA_FMS ; 
 int /*<<< orphan*/  ALI_EBUF1 ; 
 int /*<<< orphan*/  ALI_EBUF2 ; 
 int /*<<< orphan*/  ALI_ESO_DELTA ; 
 int /*<<< orphan*/  ALI_GC_CIR ; 
 int /*<<< orphan*/  ALI_GVSEL_PAN_VOC_CTRL_EC ; 
 int /*<<< orphan*/  ALI_LBA ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_ali *codec,
			 unsigned int Channel,
			 unsigned int LBA,
			 unsigned int CSO,
			 unsigned int ESO,
			 unsigned int DELTA,
			 unsigned int ALPHA_FMS,
			 unsigned int GVSEL,
			 unsigned int PAN,
			 unsigned int VOL,
			 unsigned int CTRL,
			 unsigned int EC)
{
	unsigned int ctlcmds[4];
	
	FUNC1((unsigned char)(Channel & 0x001f), FUNC0(codec, ALI_GC_CIR));

	ctlcmds[0] =  (CSO << 16) | (ALPHA_FMS & 0x0000ffff);
	ctlcmds[1] =  LBA;
	ctlcmds[2] =  (ESO << 16) | (DELTA & 0x0ffff);
	ctlcmds[3] =  (GVSEL << 31) |
		      ((PAN & 0x0000007f) << 24) |
		      ((VOL & 0x000000ff) << 16) |
		      ((CTRL & 0x0000000f) << 12) |
		      (EC & 0x00000fff);

	FUNC1(Channel, FUNC0(codec, ALI_GC_CIR));

	FUNC2(ctlcmds[0], FUNC0(codec, ALI_CSO_ALPHA_FMS));
	FUNC2(ctlcmds[1], FUNC0(codec, ALI_LBA));
	FUNC2(ctlcmds[2], FUNC0(codec, ALI_ESO_DELTA));
	FUNC2(ctlcmds[3], FUNC0(codec, ALI_GVSEL_PAN_VOC_CTRL_EC));

	FUNC2(0x30000000, FUNC0(codec, ALI_EBUF1));	/* Still Mode */
	FUNC2(0x30000000, FUNC0(codec, ALI_EBUF2));	/* Still Mode */
}