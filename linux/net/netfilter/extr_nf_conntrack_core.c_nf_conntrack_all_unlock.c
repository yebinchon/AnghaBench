
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_conntrack_locks_all ;
 int nf_conntrack_locks_all_lock ;
 int smp_store_release (int *,int) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nf_conntrack_all_unlock(void)
{






 smp_store_release(&nf_conntrack_locks_all, 0);
 spin_unlock(&nf_conntrack_locks_all_lock);
}
