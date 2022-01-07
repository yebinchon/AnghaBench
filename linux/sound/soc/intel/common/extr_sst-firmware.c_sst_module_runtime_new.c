
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int id; int list; int block_list; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int runtime_list; struct sst_dsp* dsp; } ;
struct sst_dsp {int mutex; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct sst_module_runtime* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct sst_module_runtime *sst_module_runtime_new(struct sst_module *module,
 int id, void *private)
{
 struct sst_dsp *dsp = module->dsp;
 struct sst_module_runtime *runtime;

 runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
 if (runtime == ((void*)0))
  return ((void*)0);

 runtime->id = id;
 runtime->dsp = dsp;
 runtime->module = module;
 INIT_LIST_HEAD(&runtime->block_list);

 mutex_lock(&dsp->mutex);
 list_add(&runtime->list, &module->runtime_list);
 mutex_unlock(&dsp->mutex);

 return runtime;
}
