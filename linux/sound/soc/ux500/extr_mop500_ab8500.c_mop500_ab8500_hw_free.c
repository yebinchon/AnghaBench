
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int id; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int __clear_bit (int ,int *) ;
 int mop500_ab8500_params_lock ;
 int mop500_ab8500_usage ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mop500_ab8500_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;

 mutex_lock(&mop500_ab8500_params_lock);
 __clear_bit(cpu_dai->id, &mop500_ab8500_usage);
 mutex_unlock(&mop500_ab8500_params_lock);

 return 0;
}
