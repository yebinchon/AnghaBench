
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int GFP_KERNEL ;
 int filelock_cache ;
 struct file_lock* kmem_cache_zalloc (int ,int ) ;
 int locks_init_lock_heads (struct file_lock*) ;

struct file_lock *locks_alloc_lock(void)
{
 struct file_lock *fl = kmem_cache_zalloc(filelock_cache, GFP_KERNEL);

 if (fl)
  locks_init_lock_heads(fl);

 return fl;
}
