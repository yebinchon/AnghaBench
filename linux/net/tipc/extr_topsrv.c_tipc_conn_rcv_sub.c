
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {int net; } ;
struct tipc_subscription {int sub_list; } ;
struct tipc_subscr {int filter; } ;
struct tipc_net {int subscription_count; } ;
struct tipc_conn {int sub_lock; int sub_list; int conid; } ;


 scalar_t__ TIPC_MAX_SUBSCR ;
 int TIPC_SUB_CANCEL ;
 int __constant_ntohl (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int filter ;
 int list_add (int *,int *) ;
 int pr_warn (char*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_conn_delete_sub (struct tipc_conn*,struct tipc_subscr*) ;
 struct tipc_net* tipc_net (int ) ;
 int tipc_sub_read (struct tipc_subscr*,int ) ;
 struct tipc_subscription* tipc_sub_subscribe (int ,struct tipc_subscr*,int ) ;

__attribute__((used)) static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
        struct tipc_conn *con,
        struct tipc_subscr *s)
{
 struct tipc_net *tn = tipc_net(srv->net);
 struct tipc_subscription *sub;

 if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
  s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
  tipc_conn_delete_sub(con, s);
  return 0;
 }
 if (atomic_read(&tn->subscription_count) >= TIPC_MAX_SUBSCR) {
  pr_warn("Subscription rejected, max (%u)\n", TIPC_MAX_SUBSCR);
  return -1;
 }
 sub = tipc_sub_subscribe(srv->net, s, con->conid);
 if (!sub)
  return -1;
 atomic_inc(&tn->subscription_count);
 spin_lock_bh(&con->sub_lock);
 list_add(&sub->sub_list, &con->sub_list);
 spin_unlock_bh(&con->sub_lock);
 return 0;
}
