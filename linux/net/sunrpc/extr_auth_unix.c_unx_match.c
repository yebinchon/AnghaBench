
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {TYPE_2__* cr_cred; } ;
struct auth_cred {TYPE_2__* cred; } ;
struct TYPE_4__ {TYPE_1__* group_info; int fsgid; int fsuid; } ;
struct TYPE_3__ {unsigned int ngroups; int * gid; } ;


 unsigned int UNX_NGROUPS ;
 int gid_eq (int ,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int
unx_match(struct auth_cred *acred, struct rpc_cred *cred, int flags)
{
 unsigned int groups = 0;
 unsigned int i;

 if (cred->cr_cred == acred->cred)
  return 1;

 if (!uid_eq(cred->cr_cred->fsuid, acred->cred->fsuid) || !gid_eq(cred->cr_cred->fsgid, acred->cred->fsgid))
  return 0;

 if (acred->cred->group_info != ((void*)0))
  groups = acred->cred->group_info->ngroups;
 if (groups > UNX_NGROUPS)
  groups = UNX_NGROUPS;
 if (cred->cr_cred->group_info == ((void*)0))
  return groups == 0;
 if (groups != cred->cr_cred->group_info->ngroups)
  return 0;

 for (i = 0; i < groups ; i++)
  if (!gid_eq(cred->cr_cred->group_info->gid[i], acred->cred->group_info->gid[i]))
   return 0;
 return 1;
}
