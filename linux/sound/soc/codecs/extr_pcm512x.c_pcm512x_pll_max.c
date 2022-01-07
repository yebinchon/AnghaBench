
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int overclock_pll; } ;



__attribute__((used)) static unsigned long pcm512x_pll_max(struct pcm512x_priv *pcm512x)
{
 return 25000000 + 25000000 * pcm512x->overclock_pll / 100;
}
