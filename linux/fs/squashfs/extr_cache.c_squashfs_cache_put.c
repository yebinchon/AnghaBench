
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_cache_entry {scalar_t__ refcount; struct squashfs_cache* cache; } ;
struct squashfs_cache {int lock; int wait_queue; scalar_t__ num_waiters; int unused; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void squashfs_cache_put(struct squashfs_cache_entry *entry)
{
 struct squashfs_cache *cache = entry->cache;

 spin_lock(&cache->lock);
 entry->refcount--;
 if (entry->refcount == 0) {
  cache->unused++;




  if (cache->num_waiters) {
   spin_unlock(&cache->lock);
   wake_up(&cache->wait_queue);
   return;
  }
 }
 spin_unlock(&cache->lock);
}
