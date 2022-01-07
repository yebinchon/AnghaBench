
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_template {int entry; int persistent_size; int scratch_size; int id; } ;
struct sst_module {int list; int runtime_list; int block_list; int state; int entry; int persistent_size; int scratch_size; struct sst_fw* sst_fw; struct sst_dsp* dsp; int id; } ;
struct sst_fw {struct sst_dsp* dsp; } ;
struct sst_dsp {int mutex; int module_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SST_MODULE_STATE_UNLOADED ;
 struct sst_module* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct sst_module *sst_module_new(struct sst_fw *sst_fw,
 struct sst_module_template *template, void *private)
{
 struct sst_dsp *dsp = sst_fw->dsp;
 struct sst_module *sst_module;

 sst_module = kzalloc(sizeof(*sst_module), GFP_KERNEL);
 if (sst_module == ((void*)0))
  return ((void*)0);

 sst_module->id = template->id;
 sst_module->dsp = dsp;
 sst_module->sst_fw = sst_fw;
 sst_module->scratch_size = template->scratch_size;
 sst_module->persistent_size = template->persistent_size;
 sst_module->entry = template->entry;
 sst_module->state = SST_MODULE_STATE_UNLOADED;

 INIT_LIST_HEAD(&sst_module->block_list);
 INIT_LIST_HEAD(&sst_module->runtime_list);

 mutex_lock(&dsp->mutex);
 list_add(&sst_module->list, &dsp->module_list);
 mutex_unlock(&dsp->mutex);

 return sst_module;
}
