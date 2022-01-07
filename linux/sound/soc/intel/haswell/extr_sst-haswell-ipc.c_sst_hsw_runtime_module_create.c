
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int id; } ;
struct sst_module {int dummy; } ;
struct sst_hsw {struct sst_dsp* dsp; } ;
struct sst_dsp {int dev; } ;


 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int) ;
 struct sst_module* sst_module_get_from_id (struct sst_dsp*,int) ;
 int sst_module_runtime_alloc_blocks (struct sst_module_runtime*,int) ;
 int sst_module_runtime_free (struct sst_module_runtime*) ;
 struct sst_module_runtime* sst_module_runtime_new (struct sst_module*,int,int *) ;

struct sst_module_runtime *sst_hsw_runtime_module_create(struct sst_hsw *hsw,
 int mod_id, int offset)
{
 struct sst_dsp *dsp = hsw->dsp;
 struct sst_module *module;
 struct sst_module_runtime *runtime;
 int err;

 module = sst_module_get_from_id(dsp, mod_id);
 if (module == ((void*)0)) {
  dev_err(dsp->dev, "error: failed to get module %d for pcm\n",
   mod_id);
  return ((void*)0);
 }

 runtime = sst_module_runtime_new(module, mod_id, ((void*)0));
 if (runtime == ((void*)0)) {
  dev_err(dsp->dev, "error: failed to create module %d runtime\n",
   mod_id);
  return ((void*)0);
 }

 err = sst_module_runtime_alloc_blocks(runtime, offset);
 if (err < 0) {
  dev_err(dsp->dev, "error: failed to alloc blocks for module %d runtime\n",
   mod_id);
  sst_module_runtime_free(runtime);
  return ((void*)0);
 }

 dev_dbg(dsp->dev, "runtime id %d created for module %d\n", runtime->id,
  mod_id);
 return runtime;
}
