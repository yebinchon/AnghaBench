
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nilfs_palloc_group_desc {int pg_nfrees; } ;
typedef int spinlock_t ;


 int le32_add_cpu (int *,int ) ;
 int le32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32
nilfs_palloc_group_desc_add_entries(struct nilfs_palloc_group_desc *desc,
        spinlock_t *lock, u32 n)
{
 u32 nfree;

 spin_lock(lock);
 le32_add_cpu(&desc->pg_nfrees, n);
 nfree = le32_to_cpu(desc->pg_nfrees);
 spin_unlock(lock);
 return nfree;
}
