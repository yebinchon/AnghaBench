
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {struct snd_line6_midi* private_data; } ;
struct snd_line6_midi {int midibuf_out; int midibuf_in; } ;


 int kfree (struct snd_line6_midi*) ;
 int line6_midibuf_destroy (int *) ;

__attribute__((used)) static void snd_line6_midi_free(struct snd_rawmidi *rmidi)
{
 struct snd_line6_midi *line6midi = rmidi->private_data;

 line6_midibuf_destroy(&line6midi->midibuf_in);
 line6_midibuf_destroy(&line6midi->midibuf_out);
 kfree(line6midi);
}
