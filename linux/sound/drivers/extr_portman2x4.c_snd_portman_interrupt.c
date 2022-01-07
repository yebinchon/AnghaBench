
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct portman* private_data; } ;
struct portman {int* mode; int reg_lock; int * midi_input; } ;


 int INT_REQ ;
 int PORTMAN2X4_MODE_INPUT_TRIGGERED ;
 scalar_t__ portman_data_avail (struct portman*,int) ;
 unsigned char portman_read_midi (struct portman*,int) ;
 int portman_read_status (struct portman*) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_portman_interrupt(void *userdata)
{
 unsigned char midivalue = 0;
 struct portman *pm = ((struct snd_card*)userdata)->private_data;

 spin_lock(&pm->reg_lock);


 while ((portman_read_status(pm) & INT_REQ) == INT_REQ) {


  if (portman_data_avail(pm, 0)) {

   midivalue = portman_read_midi(pm, 0);

   if (pm->mode[0] & PORTMAN2X4_MODE_INPUT_TRIGGERED)
    snd_rawmidi_receive(pm->midi_input[0],
          &midivalue, 1);

  }


  if (portman_data_avail(pm, 1)) {

   midivalue = portman_read_midi(pm, 1);

   if (pm->mode[1] & PORTMAN2X4_MODE_INPUT_TRIGGERED)
    snd_rawmidi_receive(pm->midi_input[1],
          &midivalue, 1);
  }

 }

 spin_unlock(&pm->reg_lock);
}
