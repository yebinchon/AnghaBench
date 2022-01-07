
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int rsnd_channel_normalization(int chan)
{
 if ((chan > 8) || (chan < 0))
  return 0;


 if (chan == 6)
  chan = 8;

 return chan;
}
