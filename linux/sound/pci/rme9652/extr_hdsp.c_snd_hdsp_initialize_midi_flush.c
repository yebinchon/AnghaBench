
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int snd_hdsp_flush_midi_input (struct hdsp*,int) ;

__attribute__((used)) static void snd_hdsp_initialize_midi_flush (struct hdsp *hdsp)
{
 snd_hdsp_flush_midi_input (hdsp, 0);
 snd_hdsp_flush_midi_input (hdsp, 1);
}
