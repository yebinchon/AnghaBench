
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; unsigned char* ptr; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
struct snd_seq_event {scalar_t__ type; TYPE_2__ data; int flags; } ;
struct snd_midi_event {unsigned char type; unsigned char* buf; int read; scalar_t__ qlen; int bufsize; int lock; } ;
struct TYPE_6__ {scalar_t__ event; scalar_t__ qlen; int (* encode ) (struct snd_midi_event*,struct snd_seq_event*) ;} ;


 unsigned char MIDI_CMD_COMMON_CLOCK ;
 unsigned char MIDI_CMD_COMMON_SYSEX_END ;
 int SNDRV_SEQ_EVENT_LENGTH_FIXED ;
 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ;
 scalar_t__ SNDRV_SEQ_EVENT_NONE ;
 scalar_t__ SNDRV_SEQ_EVENT_SYSEX ;
 unsigned char ST_INVALID ;
 unsigned char ST_SPECIAL ;
 unsigned char ST_SYSEX ;
 int reset_encode (struct snd_midi_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_3__* status_event ;
 int stub1 (struct snd_midi_event*,struct snd_seq_event*) ;

bool snd_midi_event_encode_byte(struct snd_midi_event *dev, unsigned char c,
    struct snd_seq_event *ev)
{
 bool rc = 0;
 unsigned long flags;

 if (c >= MIDI_CMD_COMMON_CLOCK) {

  ev->type = status_event[ST_SPECIAL + c - 0xf0].event;
  ev->flags &= ~SNDRV_SEQ_EVENT_LENGTH_MASK;
  ev->flags |= SNDRV_SEQ_EVENT_LENGTH_FIXED;
  return ev->type != SNDRV_SEQ_EVENT_NONE;
 }

 spin_lock_irqsave(&dev->lock, flags);
 if ((c & 0x80) &&
     (c != MIDI_CMD_COMMON_SYSEX_END || dev->type != ST_SYSEX)) {

  dev->buf[0] = c;
  if ((c & 0xf0) == 0xf0)
   dev->type = (c & 0x0f) + ST_SPECIAL;
  else
   dev->type = (c >> 4) & 0x07;
  dev->read = 1;
  dev->qlen = status_event[dev->type].qlen;
 } else {
  if (dev->qlen > 0) {

   dev->buf[dev->read++] = c;
   if (dev->type != ST_SYSEX)
    dev->qlen--;
  } else {

   dev->buf[1] = c;
   dev->qlen = status_event[dev->type].qlen - 1;
   dev->read = 2;
  }
 }
 if (dev->qlen == 0) {
  ev->type = status_event[dev->type].event;
  ev->flags &= ~SNDRV_SEQ_EVENT_LENGTH_MASK;
  ev->flags |= SNDRV_SEQ_EVENT_LENGTH_FIXED;
  if (status_event[dev->type].encode)
   status_event[dev->type].encode(dev, ev);
  if (dev->type >= ST_SPECIAL)
   dev->type = ST_INVALID;
  rc = 1;
 } else if (dev->type == ST_SYSEX) {
  if (c == MIDI_CMD_COMMON_SYSEX_END ||
      dev->read >= dev->bufsize) {
   ev->flags &= ~SNDRV_SEQ_EVENT_LENGTH_MASK;
   ev->flags |= SNDRV_SEQ_EVENT_LENGTH_VARIABLE;
   ev->type = SNDRV_SEQ_EVENT_SYSEX;
   ev->data.ext.len = dev->read;
   ev->data.ext.ptr = dev->buf;
   if (c != MIDI_CMD_COMMON_SYSEX_END)
    dev->read = 0;
   else
    reset_encode(dev);
   rc = 1;
  }
 }

 spin_unlock_irqrestore(&dev->lock, flags);
 return rc;
}
