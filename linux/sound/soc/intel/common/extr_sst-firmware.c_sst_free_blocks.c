
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int mutex; } ;
struct list_head {int dummy; } ;


 int block_list_remove (struct sst_dsp*,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sst_free_blocks(struct sst_dsp *dsp, struct list_head *block_list)
{
 mutex_lock(&dsp->mutex);
 block_list_remove(dsp, block_list);
 mutex_unlock(&dsp->mutex);
 return 0;
}
