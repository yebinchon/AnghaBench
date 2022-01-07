
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
typedef int kgid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ from_kgid (struct user_namespace*,int ) ;
 scalar_t__ overflowgid ;

gid_t from_kgid_munged(struct user_namespace *targ, kgid_t kgid)
{
 gid_t gid;
 gid = from_kgid(targ, kgid);

 if (gid == (gid_t) -1)
  gid = overflowgid;
 return gid;
}
