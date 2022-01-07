
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {int control_register; int system_sample_rate; scalar_t__ period_bytes; int control2_register; int irq_count; scalar_t__ iobase; int port; int irq; int serial; int firmware_rev; TYPE_1__* card; int card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 unsigned int HDSPM_AB_int ;





 int HDSPM_AutoInp ;
 unsigned int HDSPM_BufferID ;
 unsigned int HDSPM_BufferPositionMask ;
 int HDSPM_ClockModeMaster ;
 int HDSPM_LineOut ;
 unsigned int HDSPM_RX_64ch ;




 int HDSPM_TX_64ch ;
 unsigned int HDSPM_audioIRQPending ;
 int HDSPM_clr_tms ;
 unsigned int HDSPM_madiFreqMask ;
 unsigned int HDSPM_madiLock ;
 unsigned int HDSPM_madiSync ;
 unsigned int HDSPM_midi0IRQPending ;
 unsigned int HDSPM_midi1IRQPending ;
 int HDSPM_midiStatusIn0 ;
 int HDSPM_midiStatusIn1 ;
 int HDSPM_midiStatusIn2 ;
 int HDSPM_midiStatusOut0 ;
 int HDSPM_midiStatusOut1 ;
 int HDSPM_midiStatusOut2 ;
 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 unsigned int HDSPM_version0 ;
 unsigned int HDSPM_version1 ;
 unsigned int HDSPM_version2 ;
 unsigned int HDSPM_wcFreqMask ;
 unsigned int HDSPM_wcLock ;
 unsigned int HDSPM_wcSync ;
 int hdspm_autosync_ref (struct hdspm*) ;
 int hdspm_external_sample_rate (struct hdspm*) ;
 int hdspm_get_latency (struct hdspm*) ;
 scalar_t__ hdspm_hw_pointer (struct hdspm*) ;
 int hdspm_pref_sync_ref (struct hdspm*) ;
 int hdspm_read (struct hdspm*,int ) ;
 int snd_hdspm_proc_read_tco (struct snd_info_entry*,struct snd_info_buffer*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_hdspm_proc_read_madi(struct snd_info_entry *entry,
    struct snd_info_buffer *buffer)
{
 struct hdspm *hdspm = entry->private_data;
 unsigned int status, status2;

 char *pref_sync_ref;
 char *autosync_ref;
 char *system_clock_mode;
 int x, x2;

 status = hdspm_read(hdspm, HDSPM_statusRegister);
 status2 = hdspm_read(hdspm, HDSPM_statusRegister2);

 snd_iprintf(buffer, "%s (Card #%d) Rev.%x Status2first3bits: %x\n",
   hdspm->card_name, hdspm->card->number + 1,
   hdspm->firmware_rev,
   (status2 & HDSPM_version0) |
   (status2 & HDSPM_version1) | (status2 &
    HDSPM_version2));

 snd_iprintf(buffer, "HW Serial: 0x%06x%06x\n",
   (hdspm_read(hdspm, HDSPM_midiStatusIn1)>>8) & 0xFFFFFF,
   hdspm->serial);

 snd_iprintf(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
   hdspm->irq, hdspm->port, (unsigned long)hdspm->iobase);

 snd_iprintf(buffer, "--- System ---\n");

 snd_iprintf(buffer,
  "IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\n",
  status & HDSPM_audioIRQPending,
  (status & HDSPM_midi0IRQPending) ? 1 : 0,
  (status & HDSPM_midi1IRQPending) ? 1 : 0,
  hdspm->irq_count);
 snd_iprintf(buffer,
  "HW pointer: id = %d, rawptr = %d (%d->%d) "
  "estimated= %ld (bytes)\n",
  ((status & HDSPM_BufferID) ? 1 : 0),
  (status & HDSPM_BufferPositionMask),
  (status & HDSPM_BufferPositionMask) %
  (2 * (int)hdspm->period_bytes),
  ((status & HDSPM_BufferPositionMask) - 64) %
  (2 * (int)hdspm->period_bytes),
  (long) hdspm_hw_pointer(hdspm) * 4);

 snd_iprintf(buffer,
  "MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \n",
  hdspm_read(hdspm, HDSPM_midiStatusOut0) & 0xFF,
  hdspm_read(hdspm, HDSPM_midiStatusOut1) & 0xFF,
  hdspm_read(hdspm, HDSPM_midiStatusIn0) & 0xFF,
  hdspm_read(hdspm, HDSPM_midiStatusIn1) & 0xFF);
 snd_iprintf(buffer,
  "MIDIoverMADI FIFO: In=0x%x, Out=0x%x \n",
  hdspm_read(hdspm, HDSPM_midiStatusIn2) & 0xFF,
  hdspm_read(hdspm, HDSPM_midiStatusOut2) & 0xFF);
 snd_iprintf(buffer,
  "Register: ctrl1=0x%x, ctrl2=0x%x, status1=0x%x, "
  "status2=0x%x\n",
  hdspm->control_register, hdspm->control2_register,
  status, status2);


 snd_iprintf(buffer, "--- Settings ---\n");

 x = hdspm_get_latency(hdspm);

 snd_iprintf(buffer,
  "Size (Latency): %d samples (2 periods of %lu bytes)\n",
  x, (unsigned long) hdspm->period_bytes);

 snd_iprintf(buffer, "Line out: %s\n",
  (hdspm->control_register & HDSPM_LineOut) ? "on " : "off");

 snd_iprintf(buffer,
  "ClearTrackMarker = %s, Transmit in %s Channel Mode, "
  "Auto Input %s\n",
  (hdspm->control_register & HDSPM_clr_tms) ? "on" : "off",
  (hdspm->control_register & HDSPM_TX_64ch) ? "64" : "56",
  (hdspm->control_register & HDSPM_AutoInp) ? "on" : "off");


 if (!(hdspm->control_register & HDSPM_ClockModeMaster))
  system_clock_mode = "AutoSync";
 else
  system_clock_mode = "Master";
 snd_iprintf(buffer, "AutoSync Reference: %s\n", system_clock_mode);

 switch (hdspm_pref_sync_ref(hdspm)) {
 case 128:
  pref_sync_ref = "Word Clock";
  break;
 case 131:
  pref_sync_ref = "MADI Sync";
  break;
 case 129:
  pref_sync_ref = "TCO";
  break;
 case 130:
  pref_sync_ref = "Sync In";
  break;
 default:
  pref_sync_ref = "XXXX Clock";
  break;
 }
 snd_iprintf(buffer, "Preferred Sync Reference: %s\n",
   pref_sync_ref);

 snd_iprintf(buffer, "System Clock Frequency: %d\n",
   hdspm->system_sample_rate);


 snd_iprintf(buffer, "--- Status:\n");

 x = status & HDSPM_madiSync;
 x2 = status2 & HDSPM_wcSync;

 snd_iprintf(buffer, "Inputs MADI=%s, WordClock=%s\n",
   (status & HDSPM_madiLock) ? (x ? "Sync" : "Lock") :
   "NoLock",
   (status2 & HDSPM_wcLock) ? (x2 ? "Sync" : "Lock") :
   "NoLock");

 switch (hdspm_autosync_ref(hdspm)) {
 case 134:
  autosync_ref = "Sync In";
  break;
 case 133:
  autosync_ref = "TCO";
  break;
 case 132:
  autosync_ref = "Word Clock";
  break;
 case 136:
  autosync_ref = "MADI Sync";
  break;
 case 135:
  autosync_ref = "Input not valid";
  break;
 default:
  autosync_ref = "---";
  break;
 }
 snd_iprintf(buffer,
  "AutoSync: Reference= %s, Freq=%d (MADI = %d, Word = %d)\n",
  autosync_ref, hdspm_external_sample_rate(hdspm),
  (status & HDSPM_madiFreqMask) >> 22,
  (status2 & HDSPM_wcFreqMask) >> 5);

 snd_iprintf(buffer, "Input: %s, Mode=%s\n",
  (status & HDSPM_AB_int) ? "Coax" : "Optical",
  (status & HDSPM_RX_64ch) ? "64 channels" :
  "56 channels");


 snd_hdspm_proc_read_tco(entry, buffer);

 snd_iprintf(buffer, "\n");
}
