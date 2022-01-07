
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct font_desc {int pref; scalar_t__ idx; int height; int width; } ;


 scalar_t__ MACH_IS_AMIGA ;
 scalar_t__ MACH_IS_MAC ;
 scalar_t__ PEARL8x8_IDX ;
 scalar_t__ VGA6x11_IDX ;
 struct font_desc** fonts ;
 int num_fonts ;

const struct font_desc *get_default_font(int xres, int yres, u32 font_w,
      u32 font_h)
{
 int i, c, cc, res;
 const struct font_desc *f, *g;

 g = ((void*)0);
 cc = -10000;
 for (i = 0; i < num_fonts; i++) {
  f = fonts[i];
  c = f->pref;
  if ((yres < 400) == (f->height <= 8))
   c += 1000;


  res = (xres / f->width) * (yres / f->height) / 1000;
  if (res > 20)
   c += 20 - res;

  if ((font_w & (1 << (f->width - 1))) &&
      (font_h & (1 << (f->height - 1))))
   c += 1000;

  if (c > cc) {
   cc = c;
   g = f;
  }
 }
 return g;
}
