
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CONNTRACK_LOCKS ;
 int * nf_conntrack_locks ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nf_conntrack_double_unlock(unsigned int h1, unsigned int h2)
{
 h1 %= CONNTRACK_LOCKS;
 h2 %= CONNTRACK_LOCKS;
 spin_unlock(&nf_conntrack_locks[h1]);
 if (h1 != h2)
  spin_unlock(&nf_conntrack_locks[h2]);
}
