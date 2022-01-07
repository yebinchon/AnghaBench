
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_rme9652 {int thru_bits; int control_register; int hw_rev; int ss_channels; scalar_t__ passthru; scalar_t__ period_bytes; scalar_t__ iobase; int port; int irq; int playback_buffer; int capture_buffer; TYPE_1__* card; int card_name; } ;
struct snd_info_entry {scalar_t__ private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int RME9652_ADAT1_INTERNAL ;
 int RME9652_Dolby ;
 int RME9652_EMP ;
 int RME9652_Master ;
 int RME9652_PRO ;






 int RME9652_SyncPref_Mask ;

 int RME9652_inp ;
 int RME9652_latency ;
 unsigned int RME9652_lock_0 ;
 unsigned int RME9652_lock_1 ;
 unsigned int RME9652_lock_2 ;
 int RME9652_opt_out ;
 int RME9652_status_register ;
 unsigned int RME9652_sync_0 ;
 unsigned int RME9652_sync_1 ;
 unsigned int RME9652_sync_2 ;
 unsigned int RME9652_tc_valid ;
 int RME9652_wsel ;
 unsigned int RME9652_wsel_rd ;
 int rme9652_adat_sample_rate (struct snd_rme9652*) ;
 int rme9652_decode_latency (int) ;
 int rme9652_decode_spdif_in (int) ;
 int rme9652_hw_pointer (struct snd_rme9652*) ;
 unsigned int rme9652_read (struct snd_rme9652*,int ) ;
 int rme9652_spdif_sample_rate (struct snd_rme9652*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_rme9652_proc_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_rme9652 *rme9652 = (struct snd_rme9652 *) entry->private_data;
 u32 thru_bits = rme9652->thru_bits;
 int show_auto_sync_source = 0;
 int i;
 unsigned int status;
 int x;

 status = rme9652_read(rme9652, RME9652_status_register);

 snd_iprintf(buffer, "%s (Card #%d)\n", rme9652->card_name, rme9652->card->number + 1);
 snd_iprintf(buffer, "Buffers: capture %p playback %p\n",
      rme9652->capture_buffer, rme9652->playback_buffer);
 snd_iprintf(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
      rme9652->irq, rme9652->port, (unsigned long)rme9652->iobase);
 snd_iprintf(buffer, "Control register: %x\n", rme9652->control_register);

 snd_iprintf(buffer, "\n");

 x = 1 << (6 + rme9652_decode_latency(rme9652->control_register &
          RME9652_latency));

 snd_iprintf(buffer, "Latency: %d samples (2 periods of %lu bytes)\n",
      x, (unsigned long) rme9652->period_bytes);
 snd_iprintf(buffer, "Hardware pointer (frames): %ld\n",
      rme9652_hw_pointer(rme9652));
 snd_iprintf(buffer, "Passthru: %s\n",
      rme9652->passthru ? "yes" : "no");

 if ((rme9652->control_register & (RME9652_Master | RME9652_wsel)) == 0) {
  snd_iprintf(buffer, "Clock mode: autosync\n");
  show_auto_sync_source = 1;
 } else if (rme9652->control_register & RME9652_wsel) {
  if (status & RME9652_wsel_rd) {
   snd_iprintf(buffer, "Clock mode: word clock\n");
  } else {
   snd_iprintf(buffer, "Clock mode: word clock (no signal)\n");
  }
 } else {
  snd_iprintf(buffer, "Clock mode: master\n");
 }

 if (show_auto_sync_source) {
  switch (rme9652->control_register & RME9652_SyncPref_Mask) {
  case 131:
   snd_iprintf(buffer, "Pref. sync source: ADAT1\n");
   break;
  case 130:
   snd_iprintf(buffer, "Pref. sync source: ADAT2\n");
   break;
  case 129:
   snd_iprintf(buffer, "Pref. sync source: ADAT3\n");
   break;
  case 128:
   snd_iprintf(buffer, "Pref. sync source: IEC958\n");
   break;
  default:
   snd_iprintf(buffer, "Pref. sync source: ???\n");
  }
 }

 if (rme9652->hw_rev >= 15)
  snd_iprintf(buffer, "\nADAT1 Input source: %s\n",
       (rme9652->control_register & RME9652_ADAT1_INTERNAL) ?
       "Internal" : "ADAT1 optical");

 snd_iprintf(buffer, "\n");

 switch (rme9652_decode_spdif_in(rme9652->control_register &
     RME9652_inp)) {
 case 132:
  snd_iprintf(buffer, "IEC958 input: ADAT1\n");
  break;
 case 134:
  snd_iprintf(buffer, "IEC958 input: Coaxial\n");
  break;
 case 133:
  snd_iprintf(buffer, "IEC958 input: Internal\n");
  break;
 default:
  snd_iprintf(buffer, "IEC958 input: ???\n");
  break;
 }

 if (rme9652->control_register & RME9652_opt_out) {
  snd_iprintf(buffer, "IEC958 output: Coaxial & ADAT1\n");
 } else {
  snd_iprintf(buffer, "IEC958 output: Coaxial only\n");
 }

 if (rme9652->control_register & RME9652_PRO) {
  snd_iprintf(buffer, "IEC958 quality: Professional\n");
 } else {
  snd_iprintf(buffer, "IEC958 quality: Consumer\n");
 }

 if (rme9652->control_register & RME9652_EMP) {
  snd_iprintf(buffer, "IEC958 emphasis: on\n");
 } else {
  snd_iprintf(buffer, "IEC958 emphasis: off\n");
 }

 if (rme9652->control_register & RME9652_Dolby) {
  snd_iprintf(buffer, "IEC958 Dolby: on\n");
 } else {
  snd_iprintf(buffer, "IEC958 Dolby: off\n");
 }

 i = rme9652_spdif_sample_rate(rme9652);

 if (i < 0) {
  snd_iprintf(buffer,
       "IEC958 sample rate: error flag set\n");
 } else if (i == 0) {
  snd_iprintf(buffer, "IEC958 sample rate: undetermined\n");
 } else {
  snd_iprintf(buffer, "IEC958 sample rate: %d\n", i);
 }

 snd_iprintf(buffer, "\n");

 snd_iprintf(buffer, "ADAT Sample rate: %dHz\n",
      rme9652_adat_sample_rate(rme9652));



 x = status & RME9652_sync_0;
 if (status & RME9652_lock_0) {
  snd_iprintf(buffer, "ADAT1: %s\n", x ? "Sync" : "Lock");
 } else {
  snd_iprintf(buffer, "ADAT1: No Lock\n");
 }

 x = status & RME9652_sync_1;
 if (status & RME9652_lock_1) {
  snd_iprintf(buffer, "ADAT2: %s\n", x ? "Sync" : "Lock");
 } else {
  snd_iprintf(buffer, "ADAT2: No Lock\n");
 }

 x = status & RME9652_sync_2;
 if (status & RME9652_lock_2) {
  snd_iprintf(buffer, "ADAT3: %s\n", x ? "Sync" : "Lock");
 } else {
  snd_iprintf(buffer, "ADAT3: No Lock\n");
 }

 snd_iprintf(buffer, "\n");

 snd_iprintf(buffer, "Timecode signal: %s\n",
      (status & RME9652_tc_valid) ? "yes" : "no");



 snd_iprintf(buffer, "Punch Status:\n\n");

 for (i = 0; i < rme9652->ss_channels; i++) {
  if (thru_bits & (1 << i)) {
   snd_iprintf(buffer, "%2d:  on ", i + 1);
  } else {
   snd_iprintf(buffer, "%2d: off ", i + 1);
  }

  if (((i + 1) % 8) == 0) {
   snd_iprintf(buffer, "\n");
  }
 }

 snd_iprintf(buffer, "\n");
}
