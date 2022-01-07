
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int dummy; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 int commit_creds (struct cred*) ;
 struct cred* prepare_creds () ;
 int set_groups (struct cred*,struct group_info*) ;

int set_current_groups(struct group_info *group_info)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 set_groups(new, group_info);
 return commit_creds(new);
}
