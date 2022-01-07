
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 int msg_bits (struct tipc_msg*,int ,int,int) ;

__attribute__((used)) static inline bool msg_is_rcast(struct tipc_msg *m)
{
 return msg_bits(m, 0, 18, 0x1);
}
