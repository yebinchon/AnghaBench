
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct dst_metrics {int refcnt; int metrics; } ;


 int ENOMEM ;
 struct dst_metrics* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dst_default_metrics ;
 int ip_metrics_convert (struct net*,struct nlattr*,int,int ,struct netlink_ext_ack*) ;
 int kfree (struct dst_metrics*) ;
 struct dst_metrics* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 scalar_t__ unlikely (int) ;

struct dst_metrics *ip_fib_metrics_init(struct net *net, struct nlattr *fc_mx,
     int fc_mx_len,
     struct netlink_ext_ack *extack)
{
 struct dst_metrics *fib_metrics;
 int err;

 if (!fc_mx)
  return (struct dst_metrics *)&dst_default_metrics;

 fib_metrics = kzalloc(sizeof(*fib_metrics), GFP_KERNEL);
 if (unlikely(!fib_metrics))
  return ERR_PTR(-ENOMEM);

 err = ip_metrics_convert(net, fc_mx, fc_mx_len, fib_metrics->metrics,
     extack);
 if (!err) {
  refcount_set(&fib_metrics->refcnt, 1);
 } else {
  kfree(fib_metrics);
  fib_metrics = ERR_PTR(err);
 }

 return fib_metrics;
}
