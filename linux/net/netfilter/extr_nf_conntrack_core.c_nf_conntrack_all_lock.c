
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONNTRACK_LOCKS ;
 int * nf_conntrack_locks ;
 int nf_conntrack_locks_all ;
 int nf_conntrack_locks_all_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nf_conntrack_all_lock(void)
{
 int i;

 spin_lock(&nf_conntrack_locks_all_lock);

 nf_conntrack_locks_all = 1;

 for (i = 0; i < CONNTRACK_LOCKS; i++) {
  spin_lock(&nf_conntrack_locks[i]);





  spin_unlock(&nf_conntrack_locks[i]);
 }
}
