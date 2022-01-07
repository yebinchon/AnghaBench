
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {struct snd_line6_midi* line6midi; TYPE_1__* properties; } ;
struct snd_rawmidi {int private_free; struct snd_line6_midi* private_data; } ;
struct snd_line6_midi {int midibuf_out; int midibuf_in; struct usb_line6* line6; int lock; int send_wait; } ;
struct TYPE_2__ {int capabilities; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_CAP_CONTROL_MIDI ;
 int MIDI_BUFFER_SIZE ;
 int init_waitqueue_head (int *) ;
 struct snd_line6_midi* kzalloc (int,int ) ;
 int line6_midibuf_init (int *,int ,int) ;
 int snd_line6_midi_free ;
 int snd_line6_new_midi (struct usb_line6*,struct snd_rawmidi**) ;
 int spin_lock_init (int *) ;

int line6_init_midi(struct usb_line6 *line6)
{
 int err;
 struct snd_rawmidi *rmidi;
 struct snd_line6_midi *line6midi;

 if (!(line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI)) {

  return 0;
 }

 err = snd_line6_new_midi(line6, &rmidi);
 if (err < 0)
  return err;

 line6midi = kzalloc(sizeof(struct snd_line6_midi), GFP_KERNEL);
 if (!line6midi)
  return -ENOMEM;

 rmidi->private_data = line6midi;
 rmidi->private_free = snd_line6_midi_free;

 init_waitqueue_head(&line6midi->send_wait);
 spin_lock_init(&line6midi->lock);
 line6midi->line6 = line6;

 err = line6_midibuf_init(&line6midi->midibuf_in, MIDI_BUFFER_SIZE, 0);
 if (err < 0)
  return err;

 err = line6_midibuf_init(&line6midi->midibuf_out, MIDI_BUFFER_SIZE, 1);
 if (err < 0)
  return err;

 line6->line6midi = line6midi;
 return 0;
}
