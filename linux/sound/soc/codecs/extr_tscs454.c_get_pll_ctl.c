
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_ctl {unsigned long freq_in; } ;


 int ARRAY_SIZE (struct pll_ctl*) ;
 struct pll_ctl* pll_ctls ;

__attribute__((used)) static inline const struct pll_ctl *get_pll_ctl(unsigned long freq_in)
{
 int i;
 struct pll_ctl const *pll_ctl = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(pll_ctls); ++i)
  if (pll_ctls[i].freq_in == freq_in) {
   pll_ctl = &pll_ctls[i];
   break;
  }

 return pll_ctl;
}
