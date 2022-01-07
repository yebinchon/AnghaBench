
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int SHORT_H_SIZE ;
 int memset (struct tipc_msg*,int ,int ) ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_hdr_sz (struct tipc_msg*,int ) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_prevnode (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,int ) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 int msg_set_user (struct tipc_msg*,int ) ;
 int msg_set_version (struct tipc_msg*) ;

void tipc_msg_init(u32 own_node, struct tipc_msg *m, u32 user, u32 type,
     u32 hsize, u32 dnode)
{
 memset(m, 0, hsize);
 msg_set_version(m);
 msg_set_user(m, user);
 msg_set_hdr_sz(m, hsize);
 msg_set_size(m, hsize);
 msg_set_prevnode(m, own_node);
 msg_set_type(m, type);
 if (hsize > SHORT_H_SIZE) {
  msg_set_orignode(m, own_node);
  msg_set_destnode(m, dnode);
 }
}
