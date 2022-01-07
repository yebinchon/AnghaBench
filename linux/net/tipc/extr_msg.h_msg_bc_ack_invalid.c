
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;





 int msg_bits (struct tipc_msg*,int,int,int) ;
 int msg_user (struct tipc_msg*) ;

__attribute__((used)) static inline bool msg_bc_ack_invalid(struct tipc_msg *m)
{
 switch (msg_user(m)) {
 case 130:
 case 128:
 case 129:
  return msg_bits(m, 5, 14, 0x1);
 default:
  return 0;
 }
}
