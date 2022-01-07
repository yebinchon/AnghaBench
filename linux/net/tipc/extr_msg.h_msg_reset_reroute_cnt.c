
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 int msg_set_bits (struct tipc_msg*,int,int,int,int ) ;

__attribute__((used)) static inline void msg_reset_reroute_cnt(struct tipc_msg *m)
{
 msg_set_bits(m, 1, 21, 0xf, 0);
}
