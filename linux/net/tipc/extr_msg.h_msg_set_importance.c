
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;


 int MSG_BUNDLER ;
 int MSG_FRAGMENTER ;
 scalar_t__ TIPC_SYSTEM_IMPORTANCE ;
 scalar_t__ likely (int) ;
 int msg_set_bits (struct tipc_msg*,int,int ,int,scalar_t__) ;
 int msg_set_user (struct tipc_msg*,scalar_t__) ;
 int msg_user (struct tipc_msg*) ;
 int pr_warn (char*) ;

__attribute__((used)) static inline void msg_set_importance(struct tipc_msg *m, u32 i)
{
 int usr = msg_user(m);

 if (likely((usr == MSG_FRAGMENTER) || (usr == MSG_BUNDLER)))
  msg_set_bits(m, 9, 0, 0x7, i);
 else if (i < TIPC_SYSTEM_IMPORTANCE)
  msg_set_user(m, i);
 else
  pr_warn("Trying to set illegal importance in message\n");
}
