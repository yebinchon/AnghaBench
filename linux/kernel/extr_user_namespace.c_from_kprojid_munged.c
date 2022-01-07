
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
typedef scalar_t__ projid_t ;
typedef int kprojid_t ;


 scalar_t__ OVERFLOW_PROJID ;
 scalar_t__ from_kprojid (struct user_namespace*,int ) ;

projid_t from_kprojid_munged(struct user_namespace *targ, kprojid_t kprojid)
{
 projid_t projid;
 projid = from_kprojid(targ, kprojid);

 if (projid == (projid_t) -1)
  projid = OVERFLOW_PROJID;
 return projid;
}
