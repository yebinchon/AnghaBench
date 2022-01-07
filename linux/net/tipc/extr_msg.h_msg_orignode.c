
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ likely (int ) ;
 int msg_prevnode (struct tipc_msg*) ;
 int msg_short (struct tipc_msg*) ;
 int msg_word (struct tipc_msg*,int) ;

__attribute__((used)) static inline u32 msg_orignode(struct tipc_msg *m)
{
 if (likely(msg_short(m)))
  return msg_prevnode(m);
 return msg_word(m, 6);
}
