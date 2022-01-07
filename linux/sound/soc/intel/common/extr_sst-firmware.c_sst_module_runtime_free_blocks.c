
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int block_list; struct sst_dsp* dsp; } ;
struct sst_dsp {int mutex; } ;


 int block_list_remove (struct sst_dsp*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sst_module_runtime_free_blocks(struct sst_module_runtime *runtime)
{
 struct sst_dsp *dsp = runtime->dsp;

 mutex_lock(&dsp->mutex);
 block_list_remove(dsp, &runtime->block_list);
 mutex_unlock(&dsp->mutex);
 return 0;
}
