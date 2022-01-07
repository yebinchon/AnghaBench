
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {int max_cache_pages; char** page_ptr_table; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dev_err (int ,char*,int) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static inline void *offset_ptr(struct snd_emu10k1 *emu, int page, int offset)
{
 char *ptr;
 if (snd_BUG_ON(page < 0 || page >= emu->max_cache_pages))
  return ((void*)0);
 ptr = emu->page_ptr_table[page];
 if (! ptr) {
  dev_err(emu->card->dev,
   "access to NULL ptr: page = %d\n", page);
  return ((void*)0);
 }
 ptr += offset & (PAGE_SIZE - 1);
 return (void*)ptr;
}
