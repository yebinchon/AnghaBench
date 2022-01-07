
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdsp {TYPE_1__* midi; } ;
struct TYPE_2__ {scalar_t__ pending; } ;


 int snd_hdsp_midi_input_read (TYPE_1__*) ;

__attribute__((used)) static void hdsp_midi_tasklet(unsigned long arg)
{
 struct hdsp *hdsp = (struct hdsp *)arg;

 if (hdsp->midi[0].pending)
  snd_hdsp_midi_input_read (&hdsp->midi[0]);
 if (hdsp->midi[1].pending)
  snd_hdsp_midi_input_read (&hdsp->midi[1]);
}
