
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_referral_count {scalar_t__ referral_count; int list; } ;


 int kfree (struct nfs_referral_count*) ;
 int list_del (int *) ;
 struct nfs_referral_count* nfs_find_referral_count () ;
 int nfs_referral_count_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_referral_loop_unprotect(void)
{
 struct nfs_referral_count *p;

 spin_lock(&nfs_referral_count_list_lock);
 p = nfs_find_referral_count();
 p->referral_count--;
 if (p->referral_count == 0)
  list_del(&p->list);
 else
  p = ((void*)0);
 spin_unlock(&nfs_referral_count_list_lock);
 kfree(p);
}
