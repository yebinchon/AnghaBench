
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int pll_out; } ;


 unsigned long pcm512x_pll_max (struct pcm512x_priv*) ;

__attribute__((used)) static unsigned long pcm512x_sck_max(struct pcm512x_priv *pcm512x)
{
 if (!pcm512x->pll_out)
  return 25000000;
 return pcm512x_pll_max(pcm512x);
}
