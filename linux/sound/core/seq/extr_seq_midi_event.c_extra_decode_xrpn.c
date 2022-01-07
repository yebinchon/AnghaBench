
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; int param; int value; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct snd_seq_event {scalar_t__ type; TYPE_2__ data; } ;
struct snd_midi_event {unsigned char lastcmd; scalar_t__ nostat; } ;


 int ENOMEM ;
 int MIDI_CMD_CONTROL ;






 scalar_t__ SNDRV_SEQ_EVENT_NONREGPARAM ;

__attribute__((used)) static int extra_decode_xrpn(struct snd_midi_event *dev, unsigned char *buf,
        int count, struct snd_seq_event *ev)
{
 unsigned char cmd;
 char *cbytes;
 static char cbytes_nrpn[4] = { 130,
           131,
           132,
           133 };
 static char cbytes_rpn[4] = { 128,
           129,
           132,
           133 };
 unsigned char bytes[4];
 int idx = 0, i;

 if (count < 8)
  return -ENOMEM;
 if (dev->nostat && count < 12)
  return -ENOMEM;
 cmd = MIDI_CMD_CONTROL|(ev->data.control.channel & 0x0f);
 bytes[0] = (ev->data.control.param & 0x3f80) >> 7;
 bytes[1] = ev->data.control.param & 0x007f;
 bytes[2] = (ev->data.control.value & 0x3f80) >> 7;
 bytes[3] = ev->data.control.value & 0x007f;
 if (cmd != dev->lastcmd && !dev->nostat) {
  if (count < 9)
   return -ENOMEM;
  buf[idx++] = dev->lastcmd = cmd;
 }
 cbytes = ev->type == SNDRV_SEQ_EVENT_NONREGPARAM ? cbytes_nrpn : cbytes_rpn;
 for (i = 0; i < 4; i++) {
  if (dev->nostat)
   buf[idx++] = dev->lastcmd = cmd;
  buf[idx++] = cbytes[i];
  buf[idx++] = bytes[i];
 }
 return idx;
}
