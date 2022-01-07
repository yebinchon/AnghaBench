
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_rmh {int* stat; int * cmd; } ;
struct pcxhr_mgr {int dsp_loaded; int capture_ltc; scalar_t__ is_hr_stereo; } ;


 int CMD_GET_TIME_CODE ;
 int CMD_MANAGE_SIGNAL ;
 int MANAGE_SIGNAL_TIME_CODE ;
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int REG_CONT_VALSMPTE ;
 int TIME_CODE_VALID_MASK ;
 int hr222_manage_timecode (struct pcxhr_mgr*,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_write_io_num_reg_cont (struct pcxhr_mgr*,int ,int ,int *) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void pcxhr_proc_ltc(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct snd_pcxhr *chip = entry->private_data;
 struct pcxhr_mgr *mgr = chip->mgr;
 struct pcxhr_rmh rmh;
 unsigned int ltcHrs, ltcMin, ltcSec, ltcFrm;
 int err;

 if (!(mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX))) {
  snd_iprintf(buffer, "no firmware loaded\n");
  return;
 }
 if (!mgr->capture_ltc) {
  pcxhr_init_rmh(&rmh, CMD_MANAGE_SIGNAL);
  rmh.cmd[0] |= MANAGE_SIGNAL_TIME_CODE;
  err = pcxhr_send_msg(mgr, &rmh);
  if (err) {
   snd_iprintf(buffer, "ltc not activated (%d)\n", err);
   return;
  }
  if (mgr->is_hr_stereo)
   hr222_manage_timecode(mgr, 1);
  else
   pcxhr_write_io_num_reg_cont(mgr, REG_CONT_VALSMPTE,
          REG_CONT_VALSMPTE, ((void*)0));
  mgr->capture_ltc = 1;
 }
 pcxhr_init_rmh(&rmh, CMD_GET_TIME_CODE);
 err = pcxhr_send_msg(mgr, &rmh);
 if (err) {
  snd_iprintf(buffer, "ltc read error (err=%d)\n", err);
  return ;
 }
 ltcHrs = 10*((rmh.stat[0] >> 8) & 0x3) + (rmh.stat[0] & 0xf);
 ltcMin = 10*((rmh.stat[1] >> 16) & 0x7) + ((rmh.stat[1] >> 8) & 0xf);
 ltcSec = 10*(rmh.stat[1] & 0x7) + ((rmh.stat[2] >> 16) & 0xf);
 ltcFrm = 10*((rmh.stat[2] >> 8) & 0x3) + (rmh.stat[2] & 0xf);

 snd_iprintf(buffer, "timecode: %02u:%02u:%02u-%02u\n",
       ltcHrs, ltcMin, ltcSec, ltcFrm);
 snd_iprintf(buffer, "raw: 0x%04x%06x%06x\n", rmh.stat[0] & 0x00ffff,
       rmh.stat[1] & 0xffffff, rmh.stat[2] & 0xffffff);


 if (!(rmh.stat[0] & TIME_CODE_VALID_MASK)) {
  snd_iprintf(buffer, "warning: linear timecode not valid\n");
 }
}
