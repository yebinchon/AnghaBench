
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ TIPC_GRP_MEMBER_EVT ;
 scalar_t__ msg_type (struct tipc_msg*) ;

__attribute__((used)) static inline bool msg_is_grp_evt(struct tipc_msg *m)
{
 return msg_type(m) == TIPC_GRP_MEMBER_EVT;
}
