
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_mgr {size_t cur_clock_type; int dsp_loaded; int sample_rate_real; int name; scalar_t__ is_hr_stereo; } ;


 int HR22_CLOCK_TYPE_MAX ;
 int PCXHR_CLOCK_TYPE_MAX ;
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int pcxhr_get_external_clock (struct pcxhr_mgr*,int,int*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void pcxhr_proc_sync(struct snd_info_entry *entry,
       struct snd_info_buffer *buffer)
{
 struct snd_pcxhr *chip = entry->private_data;
 struct pcxhr_mgr *mgr = chip->mgr;
 static const char *textsHR22[3] = {
  "Internal", "AES Sync", "AES 1"
 };
 static const char *textsPCXHR[7] = {
  "Internal", "Word", "AES Sync",
  "AES 1", "AES 2", "AES 3", "AES 4"
 };
 const char **texts;
 int max_clock;
 if (mgr->is_hr_stereo) {
  texts = textsHR22;
  max_clock = HR22_CLOCK_TYPE_MAX;
 } else {
  texts = textsPCXHR;
  max_clock = PCXHR_CLOCK_TYPE_MAX;
 }

 snd_iprintf(buffer, "\n%s\n", mgr->name);
 snd_iprintf(buffer, "Current Sample Clock\t: %s\n",
      texts[mgr->cur_clock_type]);
 snd_iprintf(buffer, "Current Sample Rate\t= %d\n",
      mgr->sample_rate_real);

 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {
  int i, err, sample_rate;
  for (i = 1; i <= max_clock; i++) {
   err = pcxhr_get_external_clock(mgr, i, &sample_rate);
   if (err)
    break;
   snd_iprintf(buffer, "%s Clock\t\t= %d\n",
        texts[i], sample_rate);
  }
 } else
  snd_iprintf(buffer, "no firmware loaded\n");
 snd_iprintf(buffer, "\n");
}
