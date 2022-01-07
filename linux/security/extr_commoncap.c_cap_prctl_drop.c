
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cap_bset; } ;


 int CAP_SETPCAP ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int cap_lower (int ,unsigned long) ;
 int cap_valid (unsigned long) ;
 int commit_creds (struct cred*) ;
 int current_user_ns () ;
 int ns_capable (int ,int ) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int cap_prctl_drop(unsigned long cap)
{
 struct cred *new;

 if (!ns_capable(current_user_ns(), CAP_SETPCAP))
  return -EPERM;
 if (!cap_valid(cap))
  return -EINVAL;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;
 cap_lower(new->cap_bset, cap);
 return commit_creds(new);
}
