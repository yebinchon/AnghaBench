
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int template ;
struct sst_module_template {int entry; int id; } ;
struct sst_module {scalar_t__ size; void* data; int type; scalar_t__ offset; } ;
struct sst_fw {int dummy; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ fw_ext; scalar_t__ dram_offset; scalar_t__ iram_offset; } ;
struct sst_dsp {int dev; TYPE_1__ addr; } ;
struct sst_byt_fw_module_header {int blocks; int entry_point; int type; } ;
struct dma_block_info {scalar_t__ size; int type; scalar_t__ ram_offset; } ;


 int EINVAL ;
 int ENOMEM ;



 int SST_MEM_CACHE ;
 int SST_MEM_DRAM ;
 int SST_MEM_IRAM ;
 int dev_err (int ,char*,int,...) ;
 int memset (struct sst_module_template*,int ,int) ;
 int sst_module_alloc_blocks (struct sst_module*) ;
 struct sst_module* sst_module_new (struct sst_fw*,struct sst_module_template*,int *) ;

__attribute__((used)) static int sst_byt_parse_module(struct sst_dsp *dsp, struct sst_fw *fw,
    struct sst_byt_fw_module_header *module)
{
 struct dma_block_info *block;
 struct sst_module *mod;
 struct sst_module_template template;
 int count;

 memset(&template, 0, sizeof(template));
 template.id = module->type;
 template.entry = module->entry_point;

 mod = sst_module_new(fw, &template, ((void*)0));
 if (mod == ((void*)0))
  return -ENOMEM;

 block = (void *)module + sizeof(*module);

 for (count = 0; count < module->blocks; count++) {

  if (block->size <= 0) {
   dev_err(dsp->dev, "block %d size invalid\n", count);
   return -EINVAL;
  }

  switch (block->type) {
  case 128:
   mod->offset = block->ram_offset +
         dsp->addr.iram_offset;
   mod->type = SST_MEM_IRAM;
   break;
  case 129:
   mod->offset = block->ram_offset +
         dsp->addr.dram_offset;
   mod->type = SST_MEM_DRAM;
   break;
  case 130:
   mod->offset = block->ram_offset +
         (dsp->addr.fw_ext - dsp->addr.lpe);
   mod->type = SST_MEM_CACHE;
   break;
  default:
   dev_err(dsp->dev, "wrong ram type 0x%x in block0x%x\n",
    block->type, count);
   return -EINVAL;
  }

  mod->size = block->size;
  mod->data = (void *)block + sizeof(*block);

  sst_module_alloc_blocks(mod);

  block = (void *)block + sizeof(*block) + block->size;
 }
 return 0;
}
