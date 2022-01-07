
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int PROG; int AUXDSP; int CODEC; int ASIC; } ;
struct TYPE_10__ {TYPE_2__ firmware; } ;
struct snd_riptide {TYPE_7__* capture_substream; TYPE_5__** playback_substream; int openstreams; TYPE_3__ firmware; struct cmdif* cif; scalar_t__ port; int received_irqs; int handled_irqs; int device_id; TYPE_1__* card; } ;
struct snd_info_entry {struct snd_riptide* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcmhw {int * intdec; int source; int mixer; int id; } ;
struct cmdif {int cmdtimemin; int cmdtimemax; int cmdtime; int errcnt; int cmdcnt; } ;
struct TYPE_14__ {TYPE_6__* runtime; } ;
struct TYPE_13__ {struct pcmhw* private_data; } ;
struct TYPE_12__ {TYPE_4__* runtime; } ;
struct TYPE_11__ {struct pcmhw* private_data; } ;
struct TYPE_8__ {int longname; } ;


 int PLAYBACK_SUBSTREAMS ;
 int getmixer (struct cmdif*,int,unsigned short*,unsigned short*) ;
 int getpaths (struct cmdif*,unsigned char*) ;
 int getsamplerate (struct cmdif*,int *,unsigned int*) ;
 int inl (scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_riptide_proc_read(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct snd_riptide *chip = entry->private_data;
 struct pcmhw *data;
 int i;
 struct cmdif *cif = ((void*)0);
 unsigned char p[256];
 unsigned short rval = 0, lval = 0;
 unsigned int rate;

 if (!chip)
  return;

 snd_iprintf(buffer, "%s\n\n", chip->card->longname);
 snd_iprintf(buffer, "Device ID: 0x%x\nReceived IRQs: (%ld)%ld\nPorts:",
      chip->device_id, chip->handled_irqs, chip->received_irqs);
 for (i = 0; i < 64; i += 4)
  snd_iprintf(buffer, "%c%02x: %08x",
       (i % 16) ? ' ' : '\n', i, inl(chip->port + i));
 if ((cif = chip->cif)) {
  snd_iprintf(buffer,
       "\nVersion: ASIC: %d CODEC: %d AUXDSP: %d PROG: %d",
       chip->firmware.firmware.ASIC,
       chip->firmware.firmware.CODEC,
       chip->firmware.firmware.AUXDSP,
       chip->firmware.firmware.PROG);
  snd_iprintf(buffer, "\nDigital mixer:");
  for (i = 0; i < 12; i++) {
   getmixer(cif, i, &rval, &lval);
   snd_iprintf(buffer, "\n %d: %d %d", i, rval, lval);
  }
  snd_iprintf(buffer,
       "\nARM Commands num: %d failed: %d time: %d max: %d min: %d",
       cif->cmdcnt, cif->errcnt,
       cif->cmdtime, cif->cmdtimemax, cif->cmdtimemin);
 }
 snd_iprintf(buffer, "\nOpen streams %d:\n", chip->openstreams);
 for (i = 0; i < PLAYBACK_SUBSTREAMS; i++) {
  if (chip->playback_substream[i]
      && chip->playback_substream[i]->runtime
      && (data =
   chip->playback_substream[i]->runtime->private_data)) {
   snd_iprintf(buffer,
        "stream: %d mixer: %d source: %d (%d,%d)\n",
        data->id, data->mixer, data->source,
        data->intdec[0], data->intdec[1]);
   if (!(getsamplerate(cif, data->intdec, &rate)))
    snd_iprintf(buffer, "rate: %d\n", rate);
  }
 }
 if (chip->capture_substream
     && chip->capture_substream->runtime
     && (data = chip->capture_substream->runtime->private_data)) {
  snd_iprintf(buffer,
       "stream: %d mixer: %d source: %d (%d,%d)\n",
       data->id, data->mixer,
       data->source, data->intdec[0], data->intdec[1]);
  if (!(getsamplerate(cif, data->intdec, &rate)))
   snd_iprintf(buffer, "rate: %d\n", rate);
 }
 snd_iprintf(buffer, "Paths:\n");
 i = getpaths(cif, p);
 while (i >= 2) {
  i -= 2;
  snd_iprintf(buffer, "%x->%x ", p[i], p[i + 1]);
 }
 snd_iprintf(buffer, "\n");
}
