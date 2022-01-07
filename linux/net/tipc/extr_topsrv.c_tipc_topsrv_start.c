
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {scalar_t__ idr_in_use; int conn_idr; int idr_lock; int name; int awork; struct net* net; } ;
struct tipc_net {int subscription_count; struct tipc_topsrv* topsrv; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int idr_init (int *) ;
 struct tipc_topsrv* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char const*,int) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_topsrv_accept ;
 int tipc_topsrv_create_listener (struct tipc_topsrv*) ;
 int tipc_topsrv_work_start (struct tipc_topsrv*) ;
 int tipc_topsrv_work_stop (struct tipc_topsrv*) ;

__attribute__((used)) static int tipc_topsrv_start(struct net *net)
{
 struct tipc_net *tn = tipc_net(net);
 const char name[] = "topology_server";
 struct tipc_topsrv *srv;
 int ret;

 srv = kzalloc(sizeof(*srv), GFP_ATOMIC);
 if (!srv)
  return -ENOMEM;

 srv->net = net;
 INIT_WORK(&srv->awork, tipc_topsrv_accept);

 strscpy(srv->name, name, sizeof(srv->name));
 tn->topsrv = srv;
 atomic_set(&tn->subscription_count, 0);

 spin_lock_init(&srv->idr_lock);
 idr_init(&srv->conn_idr);
 srv->idr_in_use = 0;

 ret = tipc_topsrv_work_start(srv);
 if (ret < 0)
  return ret;

 ret = tipc_topsrv_create_listener(srv);
 if (ret < 0)
  tipc_topsrv_work_stop(srv);

 return ret;
}
