
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_midiDataOut0 ;
 int HDSP_midiDataOut1 ;
 int hdsp_write (struct hdsp*,int ,int) ;

__attribute__((used)) static void snd_hdsp_midi_write_byte (struct hdsp *hdsp, int id, int val)
{

 if (id)
  hdsp_write(hdsp, HDSP_midiDataOut1, val);
 else
  hdsp_write(hdsp, HDSP_midiDataOut0, val);
}
