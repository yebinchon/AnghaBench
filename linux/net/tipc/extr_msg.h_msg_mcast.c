
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int TIPC_GRP_BCAST_MSG ;
 int TIPC_GRP_MCAST_MSG ;
 int TIPC_MCAST_MSG ;
 int msg_type (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_mcast(struct tipc_msg *m)
{
 int mtyp = msg_type(m);

 return ((mtyp == TIPC_MCAST_MSG) || (mtyp == TIPC_GRP_BCAST_MSG) ||
  (mtyp == TIPC_GRP_MCAST_MSG));
}
