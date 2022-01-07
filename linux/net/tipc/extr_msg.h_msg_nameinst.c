
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int msg_word (struct tipc_msg*,int) ;

__attribute__((used)) static inline u32 msg_nameinst(struct tipc_msg *m)
{
 return msg_word(m, 9);
}
