
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ io_type; unsigned short* mixer_matrix; } ;


 scalar_t__ H9632 ;
 scalar_t__ H9652 ;
 int HDSP_LONG_WAIT ;
 unsigned int HDSP_MATRIX_MIXER_SIZE ;
 int HDSP_fifoData ;
 scalar_t__ hdsp_fifo_wait (struct hdsp*,int,int ) ;
 int hdsp_write (struct hdsp*,int,unsigned int) ;

__attribute__((used)) static int hdsp_write_gain(struct hdsp *hdsp, unsigned int addr, unsigned short data)
{
 unsigned int ad;

 if (addr >= HDSP_MATRIX_MIXER_SIZE)
  return -1;

 if (hdsp->io_type == H9652 || hdsp->io_type == H9632) {
  if (hdsp->io_type == H9632 && addr >= 512)
   return 0;

  if (hdsp->io_type == H9652 && addr >= 1352)
   return 0;

  hdsp->mixer_matrix[addr] = data;
  ad = addr/2;

  hdsp_write (hdsp, 4096 + (ad*4),
       (hdsp->mixer_matrix[(addr&0x7fe)+1] << 16) +
       hdsp->mixer_matrix[addr&0x7fe]);

  return 0;

 } else {

  ad = (addr << 16) + data;

  if (hdsp_fifo_wait(hdsp, 127, HDSP_LONG_WAIT))
   return -1;

  hdsp_write (hdsp, HDSP_fifoData, ad);
  hdsp->mixer_matrix[addr] = data;

 }

 return 0;
}
