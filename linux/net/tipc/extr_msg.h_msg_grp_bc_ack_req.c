
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_msg {int dummy; } ;


 int msg_bits (struct tipc_msg*,int,int ,int) ;

__attribute__((used)) static inline u16 msg_grp_bc_ack_req(struct tipc_msg *m)
{
 return msg_bits(m, 10, 0, 0x1);
}
