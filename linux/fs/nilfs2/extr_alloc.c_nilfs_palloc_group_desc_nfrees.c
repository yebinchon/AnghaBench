
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_group_desc {int pg_nfrees; } ;
typedef int spinlock_t ;


 unsigned long le32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned long
nilfs_palloc_group_desc_nfrees(const struct nilfs_palloc_group_desc *desc,
          spinlock_t *lock)
{
 unsigned long nfree;

 spin_lock(lock);
 nfree = le32_to_cpu(desc->pg_nfrees);
 spin_unlock(lock);
 return nfree;
}
