
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_4__ ipv6; } ;
struct fib6_result {struct fib6_info* f6i; int fib6_type; int fib6_flags; int nh; } ;
struct fib6_node {int fn_bit; int rr_ptr; int leaf; } ;
struct TYPE_6__ {int plen; } ;
struct TYPE_5__ {int plen; } ;
struct fib6_info {scalar_t__ fib6_metric; int fib6_type; int fib6_flags; int fib6_nh; TYPE_3__* fib6_table; scalar_t__ fib6_node; int fib6_next; TYPE_2__ fib6_src; TYPE_1__ fib6_dst; } ;
struct TYPE_7__ {int tb6_lock; } ;


 int find_rr_leaf (struct fib6_node*,struct fib6_info*,struct fib6_info*,int,int,int*,struct fib6_result*) ;
 int rcu_assign_pointer (int ,struct fib6_info*) ;
 struct fib6_info* rcu_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rt6_select(struct net *net, struct fib6_node *fn, int oif,
         struct fib6_result *res, int strict)
{
 struct fib6_info *leaf = rcu_dereference(fn->leaf);
 struct fib6_info *rt0;
 bool do_rr = 0;
 int key_plen;


 res->f6i = ((void*)0);

 if (!leaf || leaf == net->ipv6.fib6_null_entry)
  goto out;

 rt0 = rcu_dereference(fn->rr_ptr);
 if (!rt0)
  rt0 = leaf;






 key_plen = rt0->fib6_dst.plen;




 if (fn->fn_bit != key_plen)
  goto out;

 find_rr_leaf(fn, leaf, rt0, oif, strict, &do_rr, res);
 if (do_rr) {
  struct fib6_info *next = rcu_dereference(rt0->fib6_next);


  if (!next || next->fib6_metric != rt0->fib6_metric)
   next = leaf;

  if (next != rt0) {
   spin_lock_bh(&leaf->fib6_table->tb6_lock);

   if (next->fib6_node)
    rcu_assign_pointer(fn->rr_ptr, next);
   spin_unlock_bh(&leaf->fib6_table->tb6_lock);
  }
 }

out:
 if (!res->f6i) {
  res->f6i = net->ipv6.fib6_null_entry;
  res->nh = res->f6i->fib6_nh;
  res->fib6_flags = res->f6i->fib6_flags;
  res->fib6_type = res->f6i->fib6_type;
 }
}
