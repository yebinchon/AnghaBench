
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int dummy; } ;


 int sst_module_runtime_free (struct sst_module_runtime*) ;
 int sst_module_runtime_free_blocks (struct sst_module_runtime*) ;

void sst_hsw_runtime_module_free(struct sst_module_runtime *runtime)
{
 sst_module_runtime_free_blocks(runtime);
 sst_module_runtime_free(runtime);
}
