
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int kvfree (int *) ;

void free_bucket_spinlocks(spinlock_t *locks)
{
 kvfree(locks);
}
