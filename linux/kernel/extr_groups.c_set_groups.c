
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int dummy; } ;
struct cred {struct group_info* group_info; } ;


 int get_group_info (struct group_info*) ;
 int put_group_info (struct group_info*) ;

void set_groups(struct cred *new, struct group_info *group_info)
{
 put_group_info(new->group_info);
 get_group_info(group_info);
 new->group_info = group_info;
}
