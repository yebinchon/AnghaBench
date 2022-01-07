
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_ctl {int input_freq; } ;


 int ARRAY_SIZE (struct pll_ctl*) ;
 struct pll_ctl* pll_ctls ;

__attribute__((used)) static const struct pll_ctl *get_pll_ctl(int input_freq)
{
 int i;
 const struct pll_ctl *pll_ctl = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(pll_ctls); ++i)
  if (input_freq == pll_ctls[i].input_freq) {
   pll_ctl = &pll_ctls[i];
   break;
  }

 return pll_ctl;
}
