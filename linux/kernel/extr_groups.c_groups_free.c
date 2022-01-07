
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int dummy; } ;


 int kvfree (struct group_info*) ;

void groups_free(struct group_info *group_info)
{
 kvfree(group_info);
}
