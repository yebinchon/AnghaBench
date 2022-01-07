
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {scalar_t__* hpf2_ena; scalar_t__* hpf1_ena; scalar_t__* vss_ena; scalar_t__* mbc_ena; } ;


 int ARRAY_SIZE (scalar_t__*) ;

__attribute__((used)) static int wm8958_dsp2_busy(struct wm8994_priv *wm8994, int aif)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(wm8994->mbc_ena); i++) {
  if (i == aif)
   continue;
  if (wm8994->mbc_ena[i] || wm8994->vss_ena[i] ||
      wm8994->hpf1_ena[i] || wm8994->hpf2_ena[i])
   return 1;
 }

 return 0;
}
