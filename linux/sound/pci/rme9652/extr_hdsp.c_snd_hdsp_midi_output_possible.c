
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_midiStatusOut0 ;
 int HDSP_midiStatusOut1 ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int snd_hdsp_midi_output_possible (struct hdsp *hdsp, int id)
{
 int fifo_bytes_used;

 if (id)
  fifo_bytes_used = hdsp_read(hdsp, HDSP_midiStatusOut1) & 0xff;
 else
  fifo_bytes_used = hdsp_read(hdsp, HDSP_midiStatusOut0) & 0xff;

 if (fifo_bytes_used < 128)
  return 128 - fifo_bytes_used;
 else
  return 0;
}
