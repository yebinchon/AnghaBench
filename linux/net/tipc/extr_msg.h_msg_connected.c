
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ TIPC_CONN_MSG ;
 scalar_t__ msg_type (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_connected(struct tipc_msg *m)
{
 return msg_type(m) == TIPC_CONN_MSG;
}
