
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MADERA_FLL_MAX_N ;

__attribute__((used)) static int madera_find_main_fratio(unsigned int fref, unsigned int fout,
       int *fratio)
{
 int ratio = 1;

 while ((fout / (ratio * fref)) > MADERA_FLL_MAX_N)
  ratio++;

 if (fratio)
  *fratio = ratio - 1;

 return ratio;
}
