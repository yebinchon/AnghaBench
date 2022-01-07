
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int _wm8994_set_fll (int ,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8994_set_fll(struct snd_soc_dai *dai, int id, int src,
     unsigned int freq_in, unsigned int freq_out)
{
 return _wm8994_set_fll(dai->component, id, src, freq_in, freq_out);
}
