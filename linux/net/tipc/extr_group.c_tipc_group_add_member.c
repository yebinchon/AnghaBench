
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_group {int dummy; } ;


 int MBR_PUBLISHED ;
 int tipc_group_create_member (struct tipc_group*,int ,int ,int ,int ) ;

void tipc_group_add_member(struct tipc_group *grp, u32 node,
      u32 port, u32 instance)
{
 tipc_group_create_member(grp, node, port, instance, MBR_PUBLISHED);
}
