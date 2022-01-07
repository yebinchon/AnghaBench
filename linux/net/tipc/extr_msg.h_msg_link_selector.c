
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ MSG_FRAGMENTER ;
 int msg_bits (struct tipc_msg*,int,int ,int) ;
 scalar_t__ msg_data (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_link_selector(struct tipc_msg *m)
{
 if (msg_user(m) == MSG_FRAGMENTER)
  m = (void *)msg_data(m);
 return msg_bits(m, 4, 0, 1);
}
