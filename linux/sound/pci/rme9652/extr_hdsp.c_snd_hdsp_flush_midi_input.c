
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 scalar_t__ snd_hdsp_midi_input_available (struct hdsp*,int) ;
 int snd_hdsp_midi_read_byte (struct hdsp*,int) ;

__attribute__((used)) static void snd_hdsp_flush_midi_input (struct hdsp *hdsp, int id)
{
 while (snd_hdsp_midi_input_available (hdsp, id))
  snd_hdsp_midi_read_byte (hdsp, id);
}
