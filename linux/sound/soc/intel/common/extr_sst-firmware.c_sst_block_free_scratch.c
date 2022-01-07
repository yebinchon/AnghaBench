
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int mutex; int scratch_block_list; } ;


 int block_list_remove (struct sst_dsp*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sst_block_free_scratch(struct sst_dsp *dsp)
{
 mutex_lock(&dsp->mutex);
 block_list_remove(dsp, &dsp->scratch_block_list);
 mutex_unlock(&dsp->mutex);
}
