
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ TIPC_CRITICAL_IMPORTANCE ;
 scalar_t__ msg_user (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_isdata(struct tipc_msg *m)
{
 return msg_user(m) <= TIPC_CRITICAL_IMPORTANCE;
}
