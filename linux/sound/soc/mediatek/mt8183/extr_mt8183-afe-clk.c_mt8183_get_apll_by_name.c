
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dummy; } ;


 int APLL1_W_NAME ;
 int MT8183_APLL1 ;
 int MT8183_APLL2 ;
 scalar_t__ strcmp (char const*,int ) ;

int mt8183_get_apll_by_name(struct mtk_base_afe *afe, const char *name)
{
 if (strcmp(name, APLL1_W_NAME) == 0)
  return MT8183_APLL1;
 else
  return MT8183_APLL2;
}
