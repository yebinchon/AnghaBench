
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ TIPC_NAMED_MSG ;
 scalar_t__ msg_type (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_named(struct tipc_msg *m)
{
 return msg_type(m) == TIPC_NAMED_MSG;
}
