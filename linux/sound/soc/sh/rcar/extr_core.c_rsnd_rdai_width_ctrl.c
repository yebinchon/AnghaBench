
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai {int chan_width; } ;



int rsnd_rdai_width_ctrl(struct rsnd_dai *rdai, int width)
{
 if (width > 0)
  rdai->chan_width = width;

 return rdai->chan_width;
}
