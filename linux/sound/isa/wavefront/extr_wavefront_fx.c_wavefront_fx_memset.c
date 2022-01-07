
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fx_dsp_lsb; int fx_dsp_msb; int fx_dsp_addr; int fx_dsp_page; int fx_lcr; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int EINVAL ;
 int EIO ;
 unsigned short FX_AUTO_INCR ;
 unsigned short FX_LSB_TRANSFER ;
 int outb (unsigned short,int ) ;
 int snd_printk (char*,...) ;
 int wavefront_fx_idle (TYPE_1__*) ;

__attribute__((used)) static int
wavefront_fx_memset (snd_wavefront_t *dev,
       int page,
       int addr,
       int cnt,
       unsigned short *data)
{
 if (page < 0 || page > 7) {
  snd_printk ("FX memset: "
   "page must be >= 0 and <= 7\n");
  return -EINVAL;
 }

 if (addr < 0 || addr > 0x7f) {
  snd_printk ("FX memset: "
   "addr must be >= 0 and <= 7f\n");
  return -EINVAL;
 }

 if (cnt == 1) {

  outb (FX_LSB_TRANSFER, dev->fx_lcr);
  outb (page, dev->fx_dsp_page);
  outb (addr, dev->fx_dsp_addr);
  outb ((data[0] >> 8), dev->fx_dsp_msb);
  outb ((data[0] & 0xff), dev->fx_dsp_lsb);

  snd_printk ("FX: addr %d:%x set to 0x%x\n",
   page, addr, data[0]);

 } else {
  int i;

  outb (FX_AUTO_INCR|FX_LSB_TRANSFER, dev->fx_lcr);
  outb (page, dev->fx_dsp_page);
  outb (addr, dev->fx_dsp_addr);

  for (i = 0; i < cnt; i++) {
   outb ((data[i] >> 8), dev->fx_dsp_msb);
   outb ((data[i] & 0xff), dev->fx_dsp_lsb);
   if (!wavefront_fx_idle (dev)) {
    break;
   }
  }

  if (i != cnt) {
   snd_printk ("FX memset "
        "(0x%x, 0x%x, 0x%lx, %d) incomplete\n",
        page, addr, (unsigned long) data, cnt);
   return -EIO;
  }
 }

 return 0;
}
