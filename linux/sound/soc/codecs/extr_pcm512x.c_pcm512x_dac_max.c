
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {unsigned long overclock_dac; } ;



__attribute__((used)) static unsigned long pcm512x_dac_max(struct pcm512x_priv *pcm512x,
         unsigned long rate)
{
 return rate + rate * pcm512x->overclock_dac / 100;
}
