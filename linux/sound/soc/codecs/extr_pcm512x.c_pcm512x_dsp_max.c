
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int overclock_dsp; } ;



__attribute__((used)) static unsigned long pcm512x_dsp_max(struct pcm512x_priv *pcm512x)
{
 return 50000000 + 50000000 * pcm512x->overclock_dsp / 100;
}
