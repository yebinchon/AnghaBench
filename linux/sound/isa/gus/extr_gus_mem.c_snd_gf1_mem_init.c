
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gf1_mem {int * last; int first; int memory_mutex; } ;
struct TYPE_2__ {scalar_t__ default_voice_address; scalar_t__ enh_mode; int memory; struct snd_gf1_mem mem_alloc; } ;
struct snd_gus_card {int card; TYPE_1__ gf1; } ;
struct snd_gf1_mem_block {int size; void* name; scalar_t__ ptr; int owner; } ;
typedef int block ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_GF1_MEM_OWNER_DRIVER ;
 void* kstrdup (char*,int ) ;
 int memset (struct snd_gf1_mem_block*,int ,int) ;
 int mutex_init (int *) ;
 int snd_card_ro_proc_new (int ,char*,struct snd_gus_card*,int ) ;
 int snd_gf1_mem_info_read ;
 int * snd_gf1_mem_xalloc (struct snd_gf1_mem*,struct snd_gf1_mem_block*) ;

int snd_gf1_mem_init(struct snd_gus_card * gus)
{
 struct snd_gf1_mem *alloc;
 struct snd_gf1_mem_block block;

 alloc = &gus->gf1.mem_alloc;
 mutex_init(&alloc->memory_mutex);
 alloc->first = alloc->last = ((void*)0);
 if (!gus->gf1.memory)
  return 0;

 memset(&block, 0, sizeof(block));
 block.owner = SNDRV_GF1_MEM_OWNER_DRIVER;
 if (gus->gf1.enh_mode) {
  block.ptr = 0;
  block.size = 1024;
  block.name = kstrdup("InterWave LFOs", GFP_KERNEL);
  if (snd_gf1_mem_xalloc(alloc, &block) == ((void*)0))
   return -ENOMEM;
 }
 block.ptr = gus->gf1.default_voice_address;
 block.size = 4;
 block.name = kstrdup("Voice default (NULL's)", GFP_KERNEL);
 if (snd_gf1_mem_xalloc(alloc, &block) == ((void*)0))
  return -ENOMEM;



 return 0;
}
