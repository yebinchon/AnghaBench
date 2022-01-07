
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int addr; } ;
struct TYPE_14__ {int dev; } ;
struct in6_addr {int dummy; } ;
struct TYPE_9__ {struct in6_addr addr; } ;
struct rt6_info {TYPE_3__ rt6i_dst; TYPE_7__ dst; TYPE_2__ rt6i_src; } ;
struct rt6_exception_bucket {scalar_t__ depth; int chain; } ;
struct rt6_exception {int hlist; int stamp; struct rt6_info* rt6i; } ;
struct TYPE_12__ {TYPE_4__* rt6_stats; } ;
struct net {TYPE_5__ ipv6; } ;
struct fib6_result {struct fib6_nh* nh; struct fib6_info* f6i; } ;
struct fib6_nh {int rt6i_exception_bucket; } ;
struct TYPE_8__ {scalar_t__ plen; } ;
struct fib6_info {TYPE_6__* fib6_table; TYPE_1__ fib6_src; } ;
struct TYPE_13__ {int tb6_lock; } ;
struct TYPE_11__ {int fib_rt_cache; } ;


 int EINVAL ;
 int ENOMEM ;
 int FIB6_EXCEPTION_BUCKET_SIZE ;
 scalar_t__ FIB6_MAX_DEPTH ;
 int GFP_ATOMIC ;
 int RTAX_MTU ;
 struct rt6_exception* __rt6_find_exception_spinlock (struct rt6_exception_bucket**,int *,struct in6_addr*) ;
 struct net* dev_net (int ) ;
 scalar_t__ dst_metric_raw (TYPE_7__*,int ) ;
 int fib6_force_start_gc (struct net*) ;
 scalar_t__ fib6_mtu (struct fib6_result const*) ;
 scalar_t__ fib6_nh_excptn_bucket_flushed (struct rt6_exception_bucket*) ;
 int fib6_update_sernum (struct net*,struct fib6_info*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int jiffies ;
 struct rt6_exception_bucket* kcalloc (int ,int,int ) ;
 struct rt6_exception* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct rt6_exception_bucket*) ;
 struct rt6_exception_bucket* rcu_dereference_protected (int ,int ) ;
 int rt6_exception_lock ;
 int rt6_exception_remove_oldest (struct rt6_exception_bucket*) ;
 int rt6_remove_exception (struct rt6_exception_bucket*,struct rt6_exception*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rt6_insert_exception(struct rt6_info *nrt,
    const struct fib6_result *res)
{
 struct net *net = dev_net(nrt->dst.dev);
 struct rt6_exception_bucket *bucket;
 struct fib6_info *f6i = res->f6i;
 struct in6_addr *src_key = ((void*)0);
 struct rt6_exception *rt6_ex;
 struct fib6_nh *nh = res->nh;
 int err = 0;

 spin_lock_bh(&rt6_exception_lock);

 bucket = rcu_dereference_protected(nh->rt6i_exception_bucket,
       lockdep_is_held(&rt6_exception_lock));
 if (!bucket) {
  bucket = kcalloc(FIB6_EXCEPTION_BUCKET_SIZE, sizeof(*bucket),
     GFP_ATOMIC);
  if (!bucket) {
   err = -ENOMEM;
   goto out;
  }
  rcu_assign_pointer(nh->rt6i_exception_bucket, bucket);
 } else if (fib6_nh_excptn_bucket_flushed(bucket)) {
  err = -EINVAL;
  goto out;
 }
 if (dst_metric_raw(&nrt->dst, RTAX_MTU) >= fib6_mtu(res)) {
  err = -EINVAL;
  goto out;
 }

 rt6_ex = __rt6_find_exception_spinlock(&bucket, &nrt->rt6i_dst.addr,
            src_key);
 if (rt6_ex)
  rt6_remove_exception(bucket, rt6_ex);

 rt6_ex = kzalloc(sizeof(*rt6_ex), GFP_ATOMIC);
 if (!rt6_ex) {
  err = -ENOMEM;
  goto out;
 }
 rt6_ex->rt6i = nrt;
 rt6_ex->stamp = jiffies;
 hlist_add_head_rcu(&rt6_ex->hlist, &bucket->chain);
 bucket->depth++;
 net->ipv6.rt6_stats->fib_rt_cache++;

 if (bucket->depth > FIB6_MAX_DEPTH)
  rt6_exception_remove_oldest(bucket);

out:
 spin_unlock_bh(&rt6_exception_lock);


 if (!err) {
  spin_lock_bh(&f6i->fib6_table->tb6_lock);
  fib6_update_sernum(net, f6i);
  spin_unlock_bh(&f6i->fib6_table->tb6_lock);
  fib6_force_start_gc(net);
 }

 return err;
}
