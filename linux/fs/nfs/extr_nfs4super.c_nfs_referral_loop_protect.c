
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_referral_count {int referral_count; int list; int task; } ;


 int ELOOP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NFS_MAX_NESTED_REFERRALS ;
 int current ;
 int kfree (struct nfs_referral_count*) ;
 struct nfs_referral_count* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nfs_referral_count* nfs_find_referral_count () ;
 int nfs_referral_count_list ;
 int nfs_referral_count_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_referral_loop_protect(void)
{
 struct nfs_referral_count *p, *new;
 int ret = -ENOMEM;

 new = kmalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  goto out;
 new->task = current;
 new->referral_count = 1;

 ret = 0;
 spin_lock(&nfs_referral_count_list_lock);
 p = nfs_find_referral_count();
 if (p != ((void*)0)) {
  if (p->referral_count >= NFS_MAX_NESTED_REFERRALS)
   ret = -ELOOP;
  else
   p->referral_count++;
 } else {
  list_add(&new->list, &nfs_referral_count_list);
  new = ((void*)0);
 }
 spin_unlock(&nfs_referral_count_list_lock);
 kfree(new);
out:
 return ret;
}
