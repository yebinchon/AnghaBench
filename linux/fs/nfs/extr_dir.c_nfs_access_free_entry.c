
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_access_entry {int cred; } ;


 int atomic_long_dec (int *) ;
 int kfree_rcu (struct nfs_access_entry*,int ) ;
 int nfs_access_nr_entries ;
 int put_cred (int ) ;
 int rcu_head ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void nfs_access_free_entry(struct nfs_access_entry *entry)
{
 put_cred(entry->cred);
 kfree_rcu(entry, rcu_head);
 smp_mb__before_atomic();
 atomic_long_dec(&nfs_access_nr_entries);
 smp_mb__after_atomic();
}
