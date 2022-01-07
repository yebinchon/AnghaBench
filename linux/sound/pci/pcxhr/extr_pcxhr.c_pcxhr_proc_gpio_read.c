
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_mgr {int dsp_loaded; } ;


 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int hr222_read_gpio (struct pcxhr_mgr*,int,int*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void pcxhr_proc_gpio_read(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct snd_pcxhr *chip = entry->private_data;
 struct pcxhr_mgr *mgr = chip->mgr;

 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {

  int value = 0;
  hr222_read_gpio(mgr, 1, &value);
  snd_iprintf(buffer, "GPI: 0x%x\n", value);
  hr222_read_gpio(mgr, 0, &value);
  snd_iprintf(buffer, "GPO: 0x%x\n", value);
 } else
  snd_iprintf(buffer, "no firmware loaded\n");
 snd_iprintf(buffer, "\n");
}
