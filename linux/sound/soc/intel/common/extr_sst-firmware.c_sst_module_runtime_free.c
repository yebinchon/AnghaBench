
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int list; struct sst_dsp* dsp; } ;
struct sst_dsp {int mutex; } ;


 int kfree (struct sst_module_runtime*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sst_module_runtime_free(struct sst_module_runtime *runtime)
{
 struct sst_dsp *dsp = runtime->dsp;

 mutex_lock(&dsp->mutex);
 list_del(&runtime->list);
 mutex_unlock(&dsp->mutex);

 kfree(runtime);
}
