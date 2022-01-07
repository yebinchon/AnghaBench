
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ MSG_FRAGMENTER ;
 struct tipc_msg* msg_inner_hdr (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int msg_word (struct tipc_msg*,int) ;

__attribute__((used)) static inline u32 msg_origport(struct tipc_msg *m)
{
 if (msg_user(m) == MSG_FRAGMENTER)
  m = msg_inner_hdr(m);
 return msg_word(m, 4);
}
