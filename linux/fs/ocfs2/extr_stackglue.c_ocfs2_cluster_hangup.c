
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int ocfs2_leave_group (char const*) ;
 int ocfs2_stack_driver_put () ;

void ocfs2_cluster_hangup(const char *group, int grouplen)
{
 BUG_ON(group == ((void*)0));
 BUG_ON(group[grouplen] != '\0');

 ocfs2_leave_group(group);


 ocfs2_stack_driver_put();
}
