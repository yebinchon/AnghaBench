#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_mixart {int chip_idx; TYPE_1__* mgr; } ;
struct snd_info_entry {struct snd_mixart* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int dsp_loaded; int board_type; } ;

/* Variables and functions */
#define  MIXART_DAUGHTER_TYPE_AES 130 
#define  MIXART_DAUGHTER_TYPE_COBRANET 129 
#define  MIXART_DAUGHTER_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int MIXART_MOTHERBOARD_ELF_INDEX ; 
 int /*<<< orphan*/  MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET ; 
 int /*<<< orphan*/  MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET ; 
 int /*<<< orphan*/  MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET ; 
 int /*<<< orphan*/  MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry, 
                                 struct snd_info_buffer *buffer)
{
	struct snd_mixart *chip = entry->private_data;        
	u32 ref; 

	FUNC2(buffer, "Digigram miXart (alsa card %d)\n\n", chip->chip_idx);

	/* stats available when embedded OS is running */
	if (chip->mgr->dsp_loaded & ( 1 << MIXART_MOTHERBOARD_ELF_INDEX)) {
		FUNC2(buffer, "- hardware -\n");
		switch (chip->mgr->board_type ) {
		case MIXART_DAUGHTER_TYPE_NONE     : FUNC2(buffer, "\tmiXart8 (no daughter board)\n\n"); break;
		case MIXART_DAUGHTER_TYPE_AES      : FUNC2(buffer, "\tmiXart8 AES/EBU\n\n"); break;
		case MIXART_DAUGHTER_TYPE_COBRANET : FUNC2(buffer, "\tmiXart8 Cobranet\n\n"); break;
		default:                             FUNC2(buffer, "\tUNKNOWN!\n\n"); break;
		}

		FUNC2(buffer, "- system load -\n");	 

		/* get perf reference */

		ref = FUNC1( FUNC0( chip->mgr, MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET));

		if (ref) {
			u32 mailbox   = 100 * FUNC1( FUNC0( chip->mgr, MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET)) / ref;
			u32 streaming = 100 * FUNC1( FUNC0( chip->mgr, MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET)) / ref;
			u32 interr    = 100 * FUNC1( FUNC0( chip->mgr, MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET)) / ref;

			FUNC2(buffer, "\tstreaming          : %d\n", streaming);
			FUNC2(buffer, "\tmailbox            : %d\n", mailbox);
			FUNC2(buffer, "\tinterrupts handling : %d\n\n", interr);
		}
	} /* endif elf loaded */
}