
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* upper; void* lower; void* type; } ;
struct tipc_subscr {int usr_handle; void* filter; int timeout; TYPE_1__ seq; } ;
struct tipc_conn {int conid; int * sock; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (struct tipc_conn*) ;
 int TIPC_WAIT_FOREVER ;
 int conn_put (struct tipc_conn*) ;
 struct tipc_conn* tipc_conn_alloc (int ) ;
 int tipc_conn_rcv_sub (int ,struct tipc_conn*,struct tipc_subscr*) ;
 int tipc_topsrv (struct net*) ;

bool tipc_topsrv_kern_subscr(struct net *net, u32 port, u32 type, u32 lower,
        u32 upper, u32 filter, int *conid)
{
 struct tipc_subscr sub;
 struct tipc_conn *con;
 int rc;

 sub.seq.type = type;
 sub.seq.lower = lower;
 sub.seq.upper = upper;
 sub.timeout = TIPC_WAIT_FOREVER;
 sub.filter = filter;
 *(u32 *)&sub.usr_handle = port;

 con = tipc_conn_alloc(tipc_topsrv(net));
 if (IS_ERR(con))
  return 0;

 *conid = con->conid;
 con->sock = ((void*)0);
 rc = tipc_conn_rcv_sub(tipc_topsrv(net), con, &sub);
 if (rc >= 0)
  return 1;
 conn_put(con);
 return 0;
}
