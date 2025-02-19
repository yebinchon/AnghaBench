
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct wm_adsp_fw_caps {int num_regions; TYPE_2__* region_defs; } ;
struct wm_adsp_compr_buf {struct wm_adsp_buffer_region* regions; TYPE_1__* dsp; } ;
struct wm_adsp_buffer_region {void* base_addr; void* cumulative_size; void* offset; int mem_type; } ;
struct TYPE_6__ {struct wm_adsp_fw_caps* caps; } ;
struct TYPE_5__ {int size_offset; int base_offset; int mem_type; } ;
struct TYPE_4__ {size_t fw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int compr_dbg (struct wm_adsp_compr_buf*,char*,int,int ,void*,void*,void*) ;
 struct wm_adsp_buffer_region* kcalloc (int,int,int ) ;
 int wm_adsp_buffer_read (struct wm_adsp_compr_buf*,int ,void**) ;
 TYPE_3__* wm_adsp_fw ;

__attribute__((used)) static int wm_adsp_buffer_populate(struct wm_adsp_compr_buf *buf)
{
 const struct wm_adsp_fw_caps *caps = wm_adsp_fw[buf->dsp->fw].caps;
 struct wm_adsp_buffer_region *region;
 u32 offset = 0;
 int i, ret;

 buf->regions = kcalloc(caps->num_regions, sizeof(*buf->regions),
          GFP_KERNEL);
 if (!buf->regions)
  return -ENOMEM;

 for (i = 0; i < caps->num_regions; ++i) {
  region = &buf->regions[i];

  region->offset = offset;
  region->mem_type = caps->region_defs[i].mem_type;

  ret = wm_adsp_buffer_read(buf, caps->region_defs[i].base_offset,
       &region->base_addr);
  if (ret < 0)
   return ret;

  ret = wm_adsp_buffer_read(buf, caps->region_defs[i].size_offset,
       &offset);
  if (ret < 0)
   return ret;

  region->cumulative_size = offset;

  compr_dbg(buf,
     "region=%d type=%d base=%08x off=%08x size=%08x\n",
     i, region->mem_type, region->base_addr,
     region->offset, region->cumulative_size);
 }

 return 0;
}
