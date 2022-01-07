
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 int TIPC_GRP_MEMBER_EVT ;
 int TIPC_GRP_UCAST_MSG ;
 int msg_type (struct tipc_msg*) ;

__attribute__((used)) static inline int msg_in_group(struct tipc_msg *m)
{
 int mtyp = msg_type(m);

 return mtyp >= TIPC_GRP_MEMBER_EVT && mtyp <= TIPC_GRP_UCAST_MSG;
}
