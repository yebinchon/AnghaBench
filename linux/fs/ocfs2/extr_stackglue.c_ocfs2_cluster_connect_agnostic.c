
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_locking_protocol {int dummy; } ;
struct ocfs2_cluster_connection {int dummy; } ;


 char* cluster_stack_name ;
 int ocfs2_cluster_connect (char*,int *,int ,char const*,int,struct ocfs2_locking_protocol*,void (*) (int,void*),void*,struct ocfs2_cluster_connection**) ;

int ocfs2_cluster_connect_agnostic(const char *group,
       int grouplen,
       struct ocfs2_locking_protocol *lproto,
       void (*recovery_handler)(int node_num,
           void *recovery_data),
       void *recovery_data,
       struct ocfs2_cluster_connection **conn)
{
 char *stack_name = ((void*)0);

 if (cluster_stack_name[0])
  stack_name = cluster_stack_name;
 return ocfs2_cluster_connect(stack_name, ((void*)0), 0, group, grouplen,
         lproto, recovery_handler, recovery_data,
         conn);
}
