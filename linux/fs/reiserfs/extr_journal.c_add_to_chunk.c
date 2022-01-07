
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct buffer_chunk {scalar_t__ nr; struct buffer_head** bh; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 scalar_t__ CHUNK_SIZE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int add_to_chunk(struct buffer_chunk *chunk, struct buffer_head *bh,
   spinlock_t * lock, void (fn) (struct buffer_chunk *))
{
 int ret = 0;
 BUG_ON(chunk->nr >= CHUNK_SIZE);
 chunk->bh[chunk->nr++] = bh;
 if (chunk->nr >= CHUNK_SIZE) {
  ret = 1;
  if (lock) {
   spin_unlock(lock);
   fn(chunk);
   spin_lock(lock);
  } else {
   fn(chunk);
  }
 }
 return ret;
}
