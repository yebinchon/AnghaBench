
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct user_namespace {int dummy; } ;
typedef int kuid_t ;


 scalar_t__ from_kuid (struct user_namespace*,int ) ;
 scalar_t__ overflowuid ;

uid_t from_kuid_munged(struct user_namespace *targ, kuid_t kuid)
{
 uid_t uid;
 uid = from_kuid(targ, kuid);

 if (uid == (uid_t) -1)
  uid = overflowuid;
 return uid;
}
