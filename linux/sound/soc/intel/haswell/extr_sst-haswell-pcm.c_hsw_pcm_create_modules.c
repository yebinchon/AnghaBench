
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_hsw {int dummy; } ;
struct hsw_priv_data {struct hsw_pcm_data** pcm; int * runtime_waves; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {TYPE_1__* runtime; int persistent_offset; } ;
struct TYPE_5__ {size_t dai_id; size_t stream; int mod_id; } ;
struct TYPE_4__ {int persistent_offset; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 int SST_HSW_MODULE_WAVES ;
 TYPE_2__* mod_map ;
 scalar_t__ sst_hsw_is_module_loaded (struct sst_hsw*,int ) ;
 void* sst_hsw_runtime_module_create (struct sst_hsw*,int ,int ) ;
 int sst_hsw_runtime_module_free (TYPE_1__*) ;

__attribute__((used)) static int hsw_pcm_create_modules(struct hsw_priv_data *pdata)
{
 struct sst_hsw *hsw = pdata->hsw;
 struct hsw_pcm_data *pcm_data;
 int i;

 for (i = 0; i < ARRAY_SIZE(mod_map); i++) {
  pcm_data = &pdata->pcm[mod_map[i].dai_id][mod_map[i].stream];


  pcm_data->runtime = sst_hsw_runtime_module_create(hsw,
   mod_map[i].mod_id, pcm_data->persistent_offset);
  if (pcm_data->runtime == ((void*)0))
   goto err;
  pcm_data->persistent_offset =
   pcm_data->runtime->persistent_offset;
 }


 if (sst_hsw_is_module_loaded(hsw, SST_HSW_MODULE_WAVES)) {
  pdata->runtime_waves = sst_hsw_runtime_module_create(hsw,
   SST_HSW_MODULE_WAVES, 0);
  if (pdata->runtime_waves == ((void*)0))
   goto err;
 }

 return 0;

err:
 for (--i; i >= 0; i--) {
  pcm_data = &pdata->pcm[mod_map[i].dai_id][mod_map[i].stream];
  sst_hsw_runtime_module_free(pcm_data->runtime);
 }

 return -ENODEV;
}
