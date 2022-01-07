
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hdsp_midi {int lock; TYPE_1__* hdsp; scalar_t__ id; scalar_t__ pending; scalar_t__ input; } ;
typedef int buf ;
struct TYPE_4__ {int control_register; } ;


 int HDSP_Midi0InterruptEnable ;
 int HDSP_Midi1InterruptEnable ;
 int HDSP_controlRegister ;
 int hdsp_write (TYPE_1__*,int ,int ) ;
 int snd_hdsp_midi_input_available (TYPE_1__*,scalar_t__) ;
 int snd_hdsp_midi_output_write (struct hdsp_midi*) ;
 unsigned char snd_hdsp_midi_read_byte (TYPE_1__*,scalar_t__) ;
 int snd_rawmidi_receive (scalar_t__,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_hdsp_midi_input_read (struct hdsp_midi *hmidi)
{
 unsigned char buf[128];
 unsigned long flags;
 int n_pending;
 int i;

 spin_lock_irqsave (&hmidi->lock, flags);
 if ((n_pending = snd_hdsp_midi_input_available (hmidi->hdsp, hmidi->id)) > 0) {
  if (hmidi->input) {
   if (n_pending > (int)sizeof (buf))
    n_pending = sizeof (buf);
   for (i = 0; i < n_pending; ++i)
    buf[i] = snd_hdsp_midi_read_byte (hmidi->hdsp, hmidi->id);
   if (n_pending)
    snd_rawmidi_receive (hmidi->input, buf, n_pending);
  } else {

   while (--n_pending)
    snd_hdsp_midi_read_byte (hmidi->hdsp, hmidi->id);
  }
 }
 hmidi->pending = 0;
 if (hmidi->id)
  hmidi->hdsp->control_register |= HDSP_Midi1InterruptEnable;
 else
  hmidi->hdsp->control_register |= HDSP_Midi0InterruptEnable;
 hdsp_write(hmidi->hdsp, HDSP_controlRegister, hmidi->hdsp->control_register);
 spin_unlock_irqrestore (&hmidi->lock, flags);
 return snd_hdsp_midi_output_write (hmidi);
}
