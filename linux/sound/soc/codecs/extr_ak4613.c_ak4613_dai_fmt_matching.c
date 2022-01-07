
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4613_formats {unsigned int fmt; unsigned int width; } ;
struct ak4613_interface {struct ak4613_formats capture; struct ak4613_formats playback; } ;



__attribute__((used)) static bool ak4613_dai_fmt_matching(const struct ak4613_interface *iface,
        int is_play,
        unsigned int fmt, unsigned int width)
{
 const struct ak4613_formats *fmts;

 fmts = (is_play) ? &iface->playback : &iface->capture;

 if (fmts->fmt != fmt)
  return 0;

 if (fmts->width != width)
  return 0;

 return 1;
}
