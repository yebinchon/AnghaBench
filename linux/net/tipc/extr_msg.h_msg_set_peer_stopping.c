
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int msg_set_bits (struct tipc_msg*,int,int,int,int ) ;

__attribute__((used)) static inline void msg_set_peer_stopping(struct tipc_msg *m, u32 s)
{
 msg_set_bits(m, 5, 13, 0x1, s);
}
