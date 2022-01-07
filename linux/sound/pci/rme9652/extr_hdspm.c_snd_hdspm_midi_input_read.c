
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hdspm_midi {TYPE_1__* hdspm; int ie; int lock; scalar_t__ pending; int id; scalar_t__ input; } ;
typedef int buf ;
struct TYPE_4__ {int lock; int control_register; } ;


 int HDSPM_controlRegister ;
 int hdspm_write (TYPE_1__*,int ,int ) ;
 int snd_hdspm_midi_input_available (TYPE_1__*,int ) ;
 int snd_hdspm_midi_output_write (struct hdspm_midi*) ;
 unsigned char snd_hdspm_midi_read_byte (TYPE_1__*,int ) ;
 int snd_rawmidi_receive (scalar_t__,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_hdspm_midi_input_read (struct hdspm_midi *hmidi)
{
 unsigned char buf[128];


 unsigned long flags;
 int n_pending;
 int i;

 spin_lock_irqsave (&hmidi->lock, flags);
 n_pending = snd_hdspm_midi_input_available (hmidi->hdspm, hmidi->id);
 if (n_pending > 0) {
  if (hmidi->input) {
   if (n_pending > (int)sizeof (buf))
    n_pending = sizeof (buf);
   for (i = 0; i < n_pending; ++i)
    buf[i] = snd_hdspm_midi_read_byte (hmidi->hdspm,
           hmidi->id);
   if (n_pending)
    snd_rawmidi_receive (hmidi->input, buf,
           n_pending);
  } else {

   while (n_pending--)
    snd_hdspm_midi_read_byte (hmidi->hdspm,
         hmidi->id);
  }
 }
 hmidi->pending = 0;
 spin_unlock_irqrestore(&hmidi->lock, flags);

 spin_lock_irqsave(&hmidi->hdspm->lock, flags);
 hmidi->hdspm->control_register |= hmidi->ie;
 hdspm_write(hmidi->hdspm, HDSPM_controlRegister,
      hmidi->hdspm->control_register);
 spin_unlock_irqrestore(&hmidi->hdspm->lock, flags);

 return snd_hdspm_midi_output_write (hmidi);
}
