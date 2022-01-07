
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int group_info; int fsgid; } ;
typedef int kgid_t ;


 struct cred* current_cred () ;
 int gid_eq (int ,int ) ;
 int groups_search (int ,int ) ;

int in_group_p(kgid_t grp)
{
 const struct cred *cred = current_cred();
 int retval = 1;

 if (!gid_eq(grp, cred->fsgid))
  retval = groups_search(cred->group_info, grp);
 return retval;
}
