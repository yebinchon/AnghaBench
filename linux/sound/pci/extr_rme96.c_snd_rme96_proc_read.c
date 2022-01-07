
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct rme96* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct rme96 {int wcreg; int areg; scalar_t__* vol; TYPE_1__* card; scalar_t__ iobase; int rcreg; } ;
struct TYPE_2__ {scalar_t__ number; int longname; } ;


 int RME96_AR_WSEL ;




 scalar_t__ RME96_HAS_ANALOG_IN (struct rme96*) ;





 scalar_t__ RME96_IO_CONTROL_REGISTER ;




 int RME96_WCR_DOLBY ;
 int RME96_WCR_EMP ;
 int RME96_WCR_IDIS ;
 int RME96_WCR_ISEL ;
 int RME96_WCR_MASTER ;
 int RME96_WCR_MODE24 ;
 int RME96_WCR_MODE24_2 ;
 int RME96_WCR_PRO ;
 int RME96_WCR_SEL ;
 int readl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 scalar_t__ snd_rme96_capture_getrate (struct rme96*,int*) ;
 int snd_rme96_getattenuation (struct rme96*) ;
 int const snd_rme96_getinputtype (struct rme96*) ;
 int snd_rme96_getmontracks (struct rme96*) ;
 scalar_t__ snd_rme96_playback_getrate (struct rme96*) ;

__attribute__((used)) static void
snd_rme96_proc_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 int n;
 struct rme96 *rme96 = entry->private_data;

 rme96->rcreg = readl(rme96->iobase + RME96_IO_CONTROL_REGISTER);

 snd_iprintf(buffer, rme96->card->longname);
 snd_iprintf(buffer, " (index #%d)\n", rme96->card->number + 1);

 snd_iprintf(buffer, "\nGeneral settings\n");
 if (rme96->wcreg & RME96_WCR_IDIS) {
  snd_iprintf(buffer, "  period size: N/A (interrupts "
       "disabled)\n");
 } else if (rme96->wcreg & RME96_WCR_ISEL) {
  snd_iprintf(buffer, "  period size: 2048 bytes\n");
 } else {
  snd_iprintf(buffer, "  period size: 8192 bytes\n");
 }
 snd_iprintf(buffer, "\nInput settings\n");
 switch (snd_rme96_getinputtype(rme96)) {
 case 133:
  snd_iprintf(buffer, "  input: optical");
  break;
 case 135:
  snd_iprintf(buffer, "  input: coaxial");
  break;
 case 134:
  snd_iprintf(buffer, "  input: internal");
  break;
 case 132:
  snd_iprintf(buffer, "  input: XLR");
  break;
 case 136:
  snd_iprintf(buffer, "  input: analog");
  break;
 }
 if (snd_rme96_capture_getrate(rme96, &n) < 0) {
  snd_iprintf(buffer, "\n  sample rate: no valid signal\n");
 } else {
  if (n) {
   snd_iprintf(buffer, " (8 channels)\n");
  } else {
   snd_iprintf(buffer, " (2 channels)\n");
  }
  snd_iprintf(buffer, "  sample rate: %d Hz\n",
       snd_rme96_capture_getrate(rme96, &n));
 }
 if (rme96->wcreg & RME96_WCR_MODE24_2) {
  snd_iprintf(buffer, "  sample format: 24 bit\n");
 } else {
  snd_iprintf(buffer, "  sample format: 16 bit\n");
 }

 snd_iprintf(buffer, "\nOutput settings\n");
 if (rme96->wcreg & RME96_WCR_SEL) {
  snd_iprintf(buffer, "  output signal: normal playback\n");
 } else {
  snd_iprintf(buffer, "  output signal: same as input\n");
 }
 snd_iprintf(buffer, "  sample rate: %d Hz\n",
      snd_rme96_playback_getrate(rme96));
 if (rme96->wcreg & RME96_WCR_MODE24) {
  snd_iprintf(buffer, "  sample format: 24 bit\n");
 } else {
  snd_iprintf(buffer, "  sample format: 16 bit\n");
 }
 if (rme96->areg & RME96_AR_WSEL) {
  snd_iprintf(buffer, "  sample clock source: word clock\n");
 } else if (rme96->wcreg & RME96_WCR_MASTER) {
  snd_iprintf(buffer, "  sample clock source: internal\n");
 } else if (snd_rme96_getinputtype(rme96) == 136) {
  snd_iprintf(buffer, "  sample clock source: autosync (internal anyway due to analog input setting)\n");
 } else if (snd_rme96_capture_getrate(rme96, &n) < 0) {
  snd_iprintf(buffer, "  sample clock source: autosync (internal anyway due to no valid signal)\n");
 } else {
  snd_iprintf(buffer, "  sample clock source: autosync\n");
 }
 if (rme96->wcreg & RME96_WCR_PRO) {
  snd_iprintf(buffer, "  format: AES/EBU (professional)\n");
 } else {
  snd_iprintf(buffer, "  format: IEC958 (consumer)\n");
 }
 if (rme96->wcreg & RME96_WCR_EMP) {
  snd_iprintf(buffer, "  emphasis: on\n");
 } else {
  snd_iprintf(buffer, "  emphasis: off\n");
 }
 if (rme96->wcreg & RME96_WCR_DOLBY) {
  snd_iprintf(buffer, "  non-audio (dolby): on\n");
 } else {
  snd_iprintf(buffer, "  non-audio (dolby): off\n");
 }
 if (RME96_HAS_ANALOG_IN(rme96)) {
  snd_iprintf(buffer, "\nAnalog output settings\n");
  switch (snd_rme96_getmontracks(rme96)) {
  case 131:
   snd_iprintf(buffer, "  monitored ADAT tracks: 1+2\n");
   break;
  case 130:
   snd_iprintf(buffer, "  monitored ADAT tracks: 3+4\n");
   break;
  case 129:
   snd_iprintf(buffer, "  monitored ADAT tracks: 5+6\n");
   break;
  case 128:
   snd_iprintf(buffer, "  monitored ADAT tracks: 7+8\n");
   break;
  }
  switch (snd_rme96_getattenuation(rme96)) {
  case 140:
   snd_iprintf(buffer, "  attenuation: 0 dB\n");
   break;
  case 137:
   snd_iprintf(buffer, "  attenuation: -6 dB\n");
   break;
  case 139:
   snd_iprintf(buffer, "  attenuation: -12 dB\n");
   break;
  case 138:
   snd_iprintf(buffer, "  attenuation: -18 dB\n");
   break;
  }
  snd_iprintf(buffer, "  volume left: %u\n", rme96->vol[0]);
  snd_iprintf(buffer, "  volume right: %u\n", rme96->vol[1]);
 }
}
