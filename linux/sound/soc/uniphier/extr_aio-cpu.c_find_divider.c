
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio_pll {int freq; } ;
struct uniphier_aio {TYPE_1__* chip; } ;
struct TYPE_2__ {struct uniphier_aio_pll* plls; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOTSUPP ;
 int is_valid_pll (TYPE_1__*,int) ;

__attribute__((used)) static int find_divider(struct uniphier_aio *aio, int pll_id, unsigned int freq)
{
 struct uniphier_aio_pll *pll;
 int mul[] = { 1, 1, 1, 2, };
 int div[] = { 2, 3, 1, 3, };
 int i;

 if (!is_valid_pll(aio->chip, pll_id))
  return -EINVAL;

 pll = &aio->chip->plls[pll_id];
 for (i = 0; i < ARRAY_SIZE(mul); i++)
  if (pll->freq * mul[i] / div[i] == freq)
   return i;

 return -ENOTSUPP;
}
