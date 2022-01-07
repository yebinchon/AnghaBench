
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dummy; } ;


 int MT8183_APLL1 ;
 int MT8183_APLL2 ;

int mt8183_get_apll_by_rate(struct mtk_base_afe *afe, int rate)
{
 return ((rate % 8000) == 0) ? MT8183_APLL2 : MT8183_APLL1;
}
