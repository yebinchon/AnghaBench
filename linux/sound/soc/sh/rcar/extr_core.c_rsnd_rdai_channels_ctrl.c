
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai {int max_channels; } ;



int rsnd_rdai_channels_ctrl(struct rsnd_dai *rdai,
       int max_channels)
{
 if (max_channels > 0)
  rdai->max_channels = max_channels;

 return rdai->max_channels;
}
