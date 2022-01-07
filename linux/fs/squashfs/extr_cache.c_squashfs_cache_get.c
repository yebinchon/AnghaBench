
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct squashfs_cache_entry {scalar_t__ block; scalar_t__ refcount; int pending; scalar_t__ error; scalar_t__ length; int wait_queue; scalar_t__ num_waiters; int actor; int next_index; } ;
struct squashfs_cache {int curr_blk; int entries; scalar_t__ unused; int next_blk; int name; int lock; struct squashfs_cache_entry* entry; int num_waiters; int wait_queue; } ;


 int ERROR (char*,int ,scalar_t__) ;
 int TRACE (char*,int ,int,scalar_t__,int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ squashfs_read_data (struct super_block*,scalar_t__,int,int *,int ) ;
 int wait_event (int ,int) ;
 int wake_up_all (int *) ;

struct squashfs_cache_entry *squashfs_cache_get(struct super_block *sb,
 struct squashfs_cache *cache, u64 block, int length)
{
 int i, n;
 struct squashfs_cache_entry *entry;

 spin_lock(&cache->lock);

 while (1) {
  for (i = cache->curr_blk, n = 0; n < cache->entries; n++) {
   if (cache->entry[i].block == block) {
    cache->curr_blk = i;
    break;
   }
   i = (i + 1) % cache->entries;
  }

  if (n == cache->entries) {




   if (cache->unused == 0) {
    cache->num_waiters++;
    spin_unlock(&cache->lock);
    wait_event(cache->wait_queue, cache->unused);
    spin_lock(&cache->lock);
    cache->num_waiters--;
    continue;
   }






   i = cache->next_blk;
   for (n = 0; n < cache->entries; n++) {
    if (cache->entry[i].refcount == 0)
     break;
    i = (i + 1) % cache->entries;
   }

   cache->next_blk = (i + 1) % cache->entries;
   entry = &cache->entry[i];





   cache->unused--;
   entry->block = block;
   entry->refcount = 1;
   entry->pending = 1;
   entry->num_waiters = 0;
   entry->error = 0;
   spin_unlock(&cache->lock);

   entry->length = squashfs_read_data(sb, block, length,
    &entry->next_index, entry->actor);

   spin_lock(&cache->lock);

   if (entry->length < 0)
    entry->error = entry->length;

   entry->pending = 0;






   if (entry->num_waiters) {
    spin_unlock(&cache->lock);
    wake_up_all(&entry->wait_queue);
   } else
    spin_unlock(&cache->lock);

   goto out;
  }







  entry = &cache->entry[i];
  if (entry->refcount == 0)
   cache->unused--;
  entry->refcount++;





  if (entry->pending) {
   entry->num_waiters++;
   spin_unlock(&cache->lock);
   wait_event(entry->wait_queue, !entry->pending);
  } else
   spin_unlock(&cache->lock);

  goto out;
 }

out:
 TRACE("Got %s %d, start block %lld, refcount %d, error %d\n",
  cache->name, i, entry->block, entry->refcount, entry->error);

 if (entry->error)
  ERROR("Unable to read %s cache entry [%llx]\n", cache->name,
       block);
 return entry;
}
