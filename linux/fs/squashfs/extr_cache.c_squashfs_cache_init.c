
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_cache_entry {int * actor; int ** data; int block; struct squashfs_cache* cache; int wait_queue; } ;
struct squashfs_cache {int unused; int entries; int block_size; int pages; char* name; struct squashfs_cache_entry* entry; int wait_queue; int lock; scalar_t__ num_waiters; scalar_t__ next_blk; scalar_t__ curr_blk; } ;


 int ERROR (char*,char*) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SQUASHFS_INVALID_BLK ;
 int init_waitqueue_head (int *) ;
 void* kcalloc (int,int,int ) ;
 int * kmalloc (int ,int ) ;
 struct squashfs_cache* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int squashfs_cache_delete (struct squashfs_cache*) ;
 int * squashfs_page_actor_init (int **,int,int ) ;

struct squashfs_cache *squashfs_cache_init(char *name, int entries,
 int block_size)
{
 int i, j;
 struct squashfs_cache *cache = kzalloc(sizeof(*cache), GFP_KERNEL);

 if (cache == ((void*)0)) {
  ERROR("Failed to allocate %s cache\n", name);
  return ((void*)0);
 }

 cache->entry = kcalloc(entries, sizeof(*(cache->entry)), GFP_KERNEL);
 if (cache->entry == ((void*)0)) {
  ERROR("Failed to allocate %s cache\n", name);
  goto cleanup;
 }

 cache->curr_blk = 0;
 cache->next_blk = 0;
 cache->unused = entries;
 cache->entries = entries;
 cache->block_size = block_size;
 cache->pages = block_size >> PAGE_SHIFT;
 cache->pages = cache->pages ? cache->pages : 1;
 cache->name = name;
 cache->num_waiters = 0;
 spin_lock_init(&cache->lock);
 init_waitqueue_head(&cache->wait_queue);

 for (i = 0; i < entries; i++) {
  struct squashfs_cache_entry *entry = &cache->entry[i];

  init_waitqueue_head(&cache->entry[i].wait_queue);
  entry->cache = cache;
  entry->block = SQUASHFS_INVALID_BLK;
  entry->data = kcalloc(cache->pages, sizeof(void *), GFP_KERNEL);
  if (entry->data == ((void*)0)) {
   ERROR("Failed to allocate %s cache entry\n", name);
   goto cleanup;
  }

  for (j = 0; j < cache->pages; j++) {
   entry->data[j] = kmalloc(PAGE_SIZE, GFP_KERNEL);
   if (entry->data[j] == ((void*)0)) {
    ERROR("Failed to allocate %s buffer\n", name);
    goto cleanup;
   }
  }

  entry->actor = squashfs_page_actor_init(entry->data,
      cache->pages, 0);
  if (entry->actor == ((void*)0)) {
   ERROR("Failed to allocate %s cache entry\n", name);
   goto cleanup;
  }
 }

 return cache;

cleanup:
 squashfs_cache_delete(cache);
 return ((void*)0);
}
