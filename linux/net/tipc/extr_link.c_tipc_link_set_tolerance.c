
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct tipc_link {TYPE_1__* bc_rcvlink; void* tolerance; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {void* tolerance; } ;


 int STATE_MSG ;
 scalar_t__ link_is_up (struct tipc_link*) ;
 int tipc_link_build_proto_msg (struct tipc_link*,int ,int ,int ,int ,void*,int ,struct sk_buff_head*) ;

void tipc_link_set_tolerance(struct tipc_link *l, u32 tol,
        struct sk_buff_head *xmitq)
{
 l->tolerance = tol;
 if (l->bc_rcvlink)
  l->bc_rcvlink->tolerance = tol;
 if (link_is_up(l))
  tipc_link_build_proto_msg(l, STATE_MSG, 0, 0, 0, tol, 0, xmitq);
}
