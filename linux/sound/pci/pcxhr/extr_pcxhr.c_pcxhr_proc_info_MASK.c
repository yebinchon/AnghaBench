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
struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_rmh {int* stat; int cmd_len; int stat_len; int /*<<< orphan*/  cmd_idx; scalar_t__ dsp_stat; void** cmd; } ;
struct pcxhr_mgr {int dsp_loaded; int dsp_version; int sample_rate_real; int /*<<< orphan*/  async_err_other_last; int /*<<< orphan*/  async_err_stream_xrun; int /*<<< orphan*/  async_err_pipe_xrun; int /*<<< orphan*/  dsp_time_err; int /*<<< orphan*/  granularity; scalar_t__ board_has_analog; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_DSP_RESOURCES ; 
 int /*<<< orphan*/  CMD_LAST_INDEX ; 
 int /*<<< orphan*/  PCXHR_DRIVER_VERSION_STRING ; 
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ; 
 int PCXHR_IRQ_TIMER_FREQ ; 
 void* PCXHR_SIZE_MAX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry,
			    struct snd_info_buffer *buffer)
{
	struct snd_pcxhr *chip = entry->private_data;
	struct pcxhr_mgr *mgr = chip->mgr;

	FUNC2(buffer, "\n%s\n", mgr->name);

	/* stats available when embedded DSP is running */
	if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {
		struct pcxhr_rmh rmh;
		short ver_maj = (mgr->dsp_version >> 16) & 0xff;
		short ver_min = (mgr->dsp_version >> 8) & 0xff;
		short ver_build = mgr->dsp_version & 0xff;
		FUNC2(buffer, "module version %s\n",
			    PCXHR_DRIVER_VERSION_STRING);
		FUNC2(buffer, "dsp version %d.%d.%d\n",
			    ver_maj, ver_min, ver_build);
		if (mgr->board_has_analog)
			FUNC2(buffer, "analog io available\n");
		else
			FUNC2(buffer, "digital only board\n");

		/* calc cpu load of the dsp */
		FUNC0(&rmh, CMD_GET_DSP_RESOURCES);
		if( ! FUNC1(mgr, &rmh) ) {
			int cur = rmh.stat[0];
			int ref = rmh.stat[1];
			if (ref > 0) {
				if (mgr->sample_rate_real != 0 &&
				    mgr->sample_rate_real != 48000) {
					ref = (ref * 48000) /
					  mgr->sample_rate_real;
					if (mgr->sample_rate_real >=
					    PCXHR_IRQ_TIMER_FREQ)
						ref *= 2;
				}
				cur = 100 - (100 * cur) / ref;
				FUNC2(buffer, "cpu load    %d%%\n", cur);
				FUNC2(buffer, "buffer pool %d/%d\n",
					    rmh.stat[2], rmh.stat[3]);
			}
		}
		FUNC2(buffer, "dma granularity : %d\n",
			    mgr->granularity);
		FUNC2(buffer, "dsp time errors : %d\n",
			    mgr->dsp_time_err);
		FUNC2(buffer, "dsp async pipe xrun errors : %d\n",
			    mgr->async_err_pipe_xrun);
		FUNC2(buffer, "dsp async stream xrun errors : %d\n",
			    mgr->async_err_stream_xrun);
		FUNC2(buffer, "dsp async last other error : %x\n",
			    mgr->async_err_other_last);
		/* debug zone dsp */
		rmh.cmd[0] = 0x4200 + PCXHR_SIZE_MAX_STATUS;
		rmh.cmd_len = 1;
		rmh.stat_len = PCXHR_SIZE_MAX_STATUS;
		rmh.dsp_stat = 0;
		rmh.cmd_idx = CMD_LAST_INDEX;
		if( ! FUNC1(mgr, &rmh) ) {
			int i;
			if (rmh.stat_len > 8)
				rmh.stat_len = 8;
			for (i = 0; i < rmh.stat_len; i++)
				FUNC2(buffer, "debug[%02d] = %06x\n",
					    i,  rmh.stat[i]);
		}
	} else
		FUNC2(buffer, "no firmware loaded\n");
	FUNC2(buffer, "\n");
}