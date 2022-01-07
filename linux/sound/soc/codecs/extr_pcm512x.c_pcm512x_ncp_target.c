
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int dummy; } ;


 unsigned long pcm512x_dac_max (struct pcm512x_priv*,int) ;

__attribute__((used)) static unsigned long pcm512x_ncp_target(struct pcm512x_priv *pcm512x,
     unsigned long dac_rate)
{




 if (dac_rate <= 6144000)
  return 1536000;




 return pcm512x_dac_max(pcm512x, 1536000);
}
