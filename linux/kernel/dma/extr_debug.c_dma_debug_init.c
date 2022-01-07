
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int list; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 int DMA_DEBUG_DYNAMIC_ENTRIES ;
 int GFP_KERNEL ;
 int HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int dma_debug_create_entries (int ) ;
 int dma_debug_fs_init () ;
 int dma_debug_initialized ;
 TYPE_1__* dma_entry_hash ;
 int global_disable ;
 scalar_t__ min_free_entries ;
 scalar_t__ nr_prealloc_entries ;
 int nr_total_entries ;
 scalar_t__ num_free_entries ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int pr_warn (char*,scalar_t__,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dma_debug_init(void)
{
 int i, nr_pages;




 if (global_disable)
  return 0;

 for (i = 0; i < HASH_SIZE; ++i) {
  INIT_LIST_HEAD(&dma_entry_hash[i].list);
  spin_lock_init(&dma_entry_hash[i].lock);
 }

 dma_debug_fs_init();

 nr_pages = DIV_ROUND_UP(nr_prealloc_entries, DMA_DEBUG_DYNAMIC_ENTRIES);
 for (i = 0; i < nr_pages; ++i)
  dma_debug_create_entries(GFP_KERNEL);
 if (num_free_entries >= nr_prealloc_entries) {
  pr_info("preallocated %d debug entries\n", nr_total_entries);
 } else if (num_free_entries > 0) {
  pr_warn("%d debug entries requested but only %d allocated\n",
   nr_prealloc_entries, nr_total_entries);
 } else {
  pr_err("debugging out of memory error - disabled\n");
  global_disable = 1;

  return 0;
 }
 min_free_entries = num_free_entries;

 dma_debug_initialized = 1;

 pr_info("debugging enabled by kernel config\n");
 return 0;
}
