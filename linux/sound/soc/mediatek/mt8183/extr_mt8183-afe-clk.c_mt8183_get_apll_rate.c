
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dummy; } ;


 int MT8183_APLL1 ;

int mt8183_get_apll_rate(struct mtk_base_afe *afe, int apll)
{
 return (apll == MT8183_APLL1) ? 180633600 : 196608000;
}
