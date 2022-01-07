
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_msg {int dummy; } ;


 int msg_set_bits (struct tipc_msg*,int,int ,int,int ) ;

__attribute__((used)) static inline void msg_set_bcast_ack(struct tipc_msg *m, u16 n)
{
 msg_set_bits(m, 1, 0, 0xffff, n);
}
