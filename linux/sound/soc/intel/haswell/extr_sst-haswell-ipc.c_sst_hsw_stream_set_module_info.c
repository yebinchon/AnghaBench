
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_module_runtime {int id; int persistent_offset; struct sst_module* module; } ;
struct sst_module {void* id; int persistent_size; int entry; } ;
struct TYPE_7__ {int size; void* offset; } ;
struct TYPE_6__ {int size; void* offset; } ;
struct sst_hsw_module_map {int module_entries_count; TYPE_1__* module_entries; } ;
struct TYPE_8__ {TYPE_3__ scratch_mem; TYPE_2__ persistent_mem; struct sst_hsw_module_map map; } ;
struct sst_hsw_stream {TYPE_4__ request; scalar_t__ commited; } ;
struct sst_hsw {int dev; } ;
struct sst_dsp {int scratch_size; int scratch_offset; } ;
struct TYPE_5__ {int entry_point; void* module_id; } ;


 int EINVAL ;
 int SST_MEM_DRAM ;
 int dev_dbg (int ,char*,void*,int ) ;
 int dev_err (int ,char*) ;
 void* sst_dsp_get_offset (struct sst_dsp*,int ,int ) ;
 struct sst_dsp* sst_hsw_get_dsp (struct sst_hsw*) ;

int sst_hsw_stream_set_module_info(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, struct sst_module_runtime *runtime)
{
 struct sst_hsw_module_map *map = &stream->request.map;
 struct sst_dsp *dsp = sst_hsw_get_dsp(hsw);
 struct sst_module *module = runtime->module;

 if (stream->commited) {
  dev_err(hsw->dev, "error: stream committed for set module\n");
  return -EINVAL;
 }


 map->module_entries_count = 1;
 map->module_entries[0].module_id = module->id;
 map->module_entries[0].entry_point = module->entry;

 stream->request.persistent_mem.offset =
  sst_dsp_get_offset(dsp, runtime->persistent_offset, SST_MEM_DRAM);
 stream->request.persistent_mem.size = module->persistent_size;

 stream->request.scratch_mem.offset =
  sst_dsp_get_offset(dsp, dsp->scratch_offset, SST_MEM_DRAM);
 stream->request.scratch_mem.size = dsp->scratch_size;

 dev_dbg(hsw->dev, "module %d runtime %d using:\n", module->id,
  runtime->id);
 dev_dbg(hsw->dev, " persistent offset 0x%x bytes 0x%x\n",
  stream->request.persistent_mem.offset,
  stream->request.persistent_mem.size);
 dev_dbg(hsw->dev, " scratch offset 0x%x bytes 0x%x\n",
  stream->request.scratch_mem.offset,
  stream->request.scratch_mem.size);

 return 0;
}
