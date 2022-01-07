
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int _wm8993_set_fll (int ,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8993_set_fll(struct snd_soc_dai *dai, int fll_id, int source,
     unsigned int Fref, unsigned int Fout)
{
 return _wm8993_set_fll(dai->component, fll_id, source, Fref, Fout);
}
