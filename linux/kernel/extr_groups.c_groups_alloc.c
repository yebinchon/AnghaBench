
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int ngroups; int usage; } ;
typedef int kgid_t ;


 int GFP_KERNEL_ACCOUNT ;
 int PAGE_KERNEL ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct group_info* __vmalloc (unsigned int,int,int ) ;
 int atomic_set (int *,int) ;
 struct group_info* kmalloc (unsigned int,int) ;

struct group_info *groups_alloc(int gidsetsize)
{
 struct group_info *gi;
 unsigned int len;

 len = sizeof(struct group_info) + sizeof(kgid_t) * gidsetsize;
 gi = kmalloc(len, GFP_KERNEL_ACCOUNT|__GFP_NOWARN|__GFP_NORETRY);
 if (!gi)
  gi = __vmalloc(len, GFP_KERNEL_ACCOUNT, PAGE_KERNEL);
 if (!gi)
  return ((void*)0);

 atomic_set(&gi->usage, 1);
 gi->ngroups = gidsetsize;
 return gi;
}
