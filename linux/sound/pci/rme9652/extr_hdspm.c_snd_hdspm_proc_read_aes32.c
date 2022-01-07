
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {int control_register; int system_sample_rate; scalar_t__ period_bytes; int control2_register; int irq_count; scalar_t__ iobase; int port; int irq; int firmware_rev; TYPE_1__* card; int card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;
 unsigned int HDSPM_AES32_wcFreq_bit ;
 unsigned int HDSPM_AES32_wcLock ;
 unsigned int HDSPM_AES32_wcSync ;
 unsigned int HDSPM_BufferID ;
 unsigned int HDSPM_BufferPositionMask ;
 int HDSPM_DS_DoubleWire ;
 int HDSPM_Dolby ;
 int HDSPM_Emphasis ;
 int HDSPM_LineOut ;
 int HDSPM_LockAES ;
 int HDSPM_QS_DoubleWire ;
 int HDSPM_QS_QuadWire ;
 unsigned int HDSPM_audioIRQPending ;
 int HDSPM_bit2freq (unsigned int) ;
 int HDSPM_clr_tms ;
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
 int HDSPM_timecodeRegister ;
 int hdspm_autosync_ref (struct hdspm*) ;
 int hdspm_get_latency (struct hdspm*) ;
 scalar_t__ hdspm_hw_pointer (struct hdspm*) ;
 int hdspm_pref_sync_ref (struct hdspm*) ;
 int hdspm_read (struct hdspm*,int ) ;
 int snd_hdspm_proc_read_tco (struct snd_info_entry*,struct snd_info_buffer*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_hdspm_proc_read_aes32(struct snd_info_entry * entry,
     struct snd_info_buffer *buffer)
{
 struct hdspm *hdspm = entry->private_data;
 unsigned int status;
 unsigned int status2;
 unsigned int timecode;
 unsigned int wcLock, wcSync;
 int pref_syncref;
 char *autosync_ref;
 int x;

 status = hdspm_read(hdspm, HDSPM_statusRegister);
 status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
 timecode = hdspm_read(hdspm, HDSPM_timecodeRegister);

 snd_iprintf(buffer, "%s (Card #%d) Rev.%x\n",
      hdspm->card_name, hdspm->card->number + 1,
      hdspm->firmware_rev);

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
      (hdspm->
       control_register & HDSPM_LineOut) ? "on " : "off");

 snd_iprintf(buffer,
      "ClearTrackMarker %s, Emphasis %s, Dolby %s\n",
      (hdspm->
       control_register & HDSPM_clr_tms) ? "on" : "off",
      (hdspm->
       control_register & HDSPM_Emphasis) ? "on" : "off",
      (hdspm->
       control_register & HDSPM_Dolby) ? "on" : "off");


 pref_syncref = hdspm_pref_sync_ref(hdspm);
 if (pref_syncref == 0)
  snd_iprintf(buffer, "Preferred Sync Reference: Word Clock\n");
 else
  snd_iprintf(buffer, "Preferred Sync Reference: AES%d\n",
    pref_syncref);

 snd_iprintf(buffer, "System Clock Frequency: %d\n",
      hdspm->system_sample_rate);

 snd_iprintf(buffer, "Double speed: %s\n",
   hdspm->control_register & HDSPM_DS_DoubleWire?
   "Double wire" : "Single wire");
 snd_iprintf(buffer, "Quad speed: %s\n",
   hdspm->control_register & HDSPM_QS_DoubleWire?
   "Double wire" :
   hdspm->control_register & HDSPM_QS_QuadWire?
   "Quad wire" : "Single wire");

 snd_iprintf(buffer, "--- Status:\n");

 wcLock = status & HDSPM_AES32_wcLock;
 wcSync = wcLock && (status & HDSPM_AES32_wcSync);

 snd_iprintf(buffer, "Word: %s  Frequency: %d\n",
      (wcLock) ? (wcSync ? "Sync   " : "Lock   ") : "No Lock",
      HDSPM_bit2freq((status >> HDSPM_AES32_wcFreq_bit) & 0xF));

 for (x = 0; x < 8; x++) {
  snd_iprintf(buffer, "AES%d: %s  Frequency: %d\n",
       x+1,
       (status2 & (HDSPM_LockAES >> x)) ?
       "Sync   " : "No Lock",
       HDSPM_bit2freq((timecode >> (4*x)) & 0xF));
 }

 switch (hdspm_autosync_ref(hdspm)) {
 case 131:
  autosync_ref = "None"; break;
 case 128:
  autosync_ref = "Word Clock"; break;
 case 139:
  autosync_ref = "AES1"; break;
 case 138:
  autosync_ref = "AES2"; break;
 case 137:
  autosync_ref = "AES3"; break;
 case 136:
  autosync_ref = "AES4"; break;
 case 135:
  autosync_ref = "AES5"; break;
 case 134:
  autosync_ref = "AES6"; break;
 case 133:
  autosync_ref = "AES7"; break;
 case 132:
  autosync_ref = "AES8"; break;
 case 129:
  autosync_ref = "TCO"; break;
 case 130:
  autosync_ref = "Sync In"; break;
 default:
  autosync_ref = "---"; break;
 }
 snd_iprintf(buffer, "AutoSync ref = %s\n", autosync_ref);


 snd_hdspm_proc_read_tco(entry, buffer);

 snd_iprintf(buffer, "\n");
}
