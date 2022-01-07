
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_rmh {int* stat; int cmd_len; int stat_len; int cmd_idx; scalar_t__ dsp_stat; void** cmd; } ;
struct pcxhr_mgr {int dsp_loaded; int dsp_version; int sample_rate_real; int async_err_other_last; int async_err_stream_xrun; int async_err_pipe_xrun; int dsp_time_err; int granularity; scalar_t__ board_has_analog; int name; } ;


 int CMD_GET_DSP_RESOURCES ;
 int CMD_LAST_INDEX ;
 int PCXHR_DRIVER_VERSION_STRING ;
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int PCXHR_IRQ_TIMER_FREQ ;
 void* PCXHR_SIZE_MAX_STATUS ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void pcxhr_proc_info(struct snd_info_entry *entry,
       struct snd_info_buffer *buffer)
{
 struct snd_pcxhr *chip = entry->private_data;
 struct pcxhr_mgr *mgr = chip->mgr;

 snd_iprintf(buffer, "\n%s\n", mgr->name);


 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {
  struct pcxhr_rmh rmh;
  short ver_maj = (mgr->dsp_version >> 16) & 0xff;
  short ver_min = (mgr->dsp_version >> 8) & 0xff;
  short ver_build = mgr->dsp_version & 0xff;
  snd_iprintf(buffer, "module version %s\n",
       PCXHR_DRIVER_VERSION_STRING);
  snd_iprintf(buffer, "dsp version %d.%d.%d\n",
       ver_maj, ver_min, ver_build);
  if (mgr->board_has_analog)
   snd_iprintf(buffer, "analog io available\n");
  else
   snd_iprintf(buffer, "digital only board\n");


  pcxhr_init_rmh(&rmh, CMD_GET_DSP_RESOURCES);
  if( ! pcxhr_send_msg(mgr, &rmh) ) {
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
    snd_iprintf(buffer, "cpu load    %d%%\n", cur);
    snd_iprintf(buffer, "buffer pool %d/%d\n",
         rmh.stat[2], rmh.stat[3]);
   }
  }
  snd_iprintf(buffer, "dma granularity : %d\n",
       mgr->granularity);
  snd_iprintf(buffer, "dsp time errors : %d\n",
       mgr->dsp_time_err);
  snd_iprintf(buffer, "dsp async pipe xrun errors : %d\n",
       mgr->async_err_pipe_xrun);
  snd_iprintf(buffer, "dsp async stream xrun errors : %d\n",
       mgr->async_err_stream_xrun);
  snd_iprintf(buffer, "dsp async last other error : %x\n",
       mgr->async_err_other_last);

  rmh.cmd[0] = 0x4200 + PCXHR_SIZE_MAX_STATUS;
  rmh.cmd_len = 1;
  rmh.stat_len = PCXHR_SIZE_MAX_STATUS;
  rmh.dsp_stat = 0;
  rmh.cmd_idx = CMD_LAST_INDEX;
  if( ! pcxhr_send_msg(mgr, &rmh) ) {
   int i;
   if (rmh.stat_len > 8)
    rmh.stat_len = 8;
   for (i = 0; i < rmh.stat_len; i++)
    snd_iprintf(buffer, "debug[%02d] = %06x\n",
         i, rmh.stat[i]);
  }
 } else
  snd_iprintf(buffer, "no firmware loaded\n");
 snd_iprintf(buffer, "\n");
}
