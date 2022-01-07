
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int filelock_cache ;
 int kmem_cache_free (int ,struct file_lock*) ;
 int locks_release_private (struct file_lock*) ;

void locks_free_lock(struct file_lock *fl)
{
 locks_release_private(fl);
 kmem_cache_free(filelock_cache, fl);
}
