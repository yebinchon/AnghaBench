
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct in6_addr {int dummy; } ;
struct rt6key {struct in6_addr addr; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int tb6_lock; } ;
struct fib6_node {int fn_bit; int fn_flags; int left; int right; int parent; int leaf; } ;
struct fib6_info {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ENOENT ;
 int ENOMEM ;
 struct fib6_node* ERR_PTR (int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RCU_INIT_POINTER (int ,struct fib6_node*) ;
 int RT6_TRACE (char*) ;
 int RTN_RTINFO ;
 int RTN_TL_ROOT ;
 int __ipv6_addr_diff (struct in6_addr*,struct in6_addr*,int) ;
 scalar_t__ addr_bit_set (struct in6_addr*,int) ;
 int fib6_info_hold (void*) ;
 int fib6_info_release (struct fib6_info*) ;
 int ipv6_prefix_equal (struct in6_addr*,struct in6_addr*,int) ;
 int lockdep_is_held (int *) ;
 struct fib6_node* node_alloc (struct net*) ;
 int node_free_immediate (struct net*,struct fib6_node*) ;
 int pr_warn (char*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct fib6_node*) ;
 void* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct fib6_node *fib6_add_1(struct net *net,
        struct fib6_table *table,
        struct fib6_node *root,
        struct in6_addr *addr, int plen,
        int offset, int allow_create,
        int replace_required,
        struct netlink_ext_ack *extack)
{
 struct fib6_node *fn, *in, *ln;
 struct fib6_node *pn = ((void*)0);
 struct rt6key *key;
 int bit;
 __be32 dir = 0;

 RT6_TRACE("fib6_add_1\n");



 fn = root;

 do {
  struct fib6_info *leaf = rcu_dereference_protected(fn->leaf,
         lockdep_is_held(&table->tb6_lock));
  key = (struct rt6key *)((u8 *)leaf + offset);




  if (plen < fn->fn_bit ||
      !ipv6_prefix_equal(&key->addr, addr, fn->fn_bit)) {
   if (!allow_create) {
    if (replace_required) {
     NL_SET_ERR_MSG(extack,
             "Can not replace route - no match found");
     pr_warn("Can't replace route, no match found\n");
     return ERR_PTR(-ENOENT);
    }
    pr_warn("NLM_F_CREATE should be set when creating new route\n");
   }
   goto insert_above;
  }





  if (plen == fn->fn_bit) {

   if (!(fn->fn_flags & RTN_RTINFO)) {
    RCU_INIT_POINTER(fn->leaf, ((void*)0));
    fib6_info_release(leaf);

   } else if (fn->fn_flags & RTN_TL_ROOT &&
       rcu_access_pointer(fn->leaf) ==
       net->ipv6.fib6_null_entry) {
    RCU_INIT_POINTER(fn->leaf, ((void*)0));
   }

   return fn;
  }






  dir = addr_bit_set(addr, fn->fn_bit);
  pn = fn;
  fn = dir ?
       rcu_dereference_protected(fn->right,
     lockdep_is_held(&table->tb6_lock)) :
       rcu_dereference_protected(fn->left,
     lockdep_is_held(&table->tb6_lock));
 } while (fn);

 if (!allow_create) {
  if (replace_required) {
   NL_SET_ERR_MSG(extack,
           "Can not replace route - no match found");
   pr_warn("Can't replace route, no match found\n");
   return ERR_PTR(-ENOENT);
  }
  pr_warn("NLM_F_CREATE should be set when creating new route\n");
 }





 ln = node_alloc(net);

 if (!ln)
  return ERR_PTR(-ENOMEM);
 ln->fn_bit = plen;
 RCU_INIT_POINTER(ln->parent, pn);

 if (dir)
  rcu_assign_pointer(pn->right, ln);
 else
  rcu_assign_pointer(pn->left, ln);

 return ln;


insert_above:
 pn = rcu_dereference_protected(fn->parent,
           lockdep_is_held(&table->tb6_lock));







 bit = __ipv6_addr_diff(addr, &key->addr, sizeof(*addr));






 if (plen > bit) {
  in = node_alloc(net);
  ln = node_alloc(net);

  if (!in || !ln) {
   if (in)
    node_free_immediate(net, in);
   if (ln)
    node_free_immediate(net, ln);
   return ERR_PTR(-ENOMEM);
  }
  in->fn_bit = bit;

  RCU_INIT_POINTER(in->parent, pn);
  in->leaf = fn->leaf;
  fib6_info_hold(rcu_dereference_protected(in->leaf,
    lockdep_is_held(&table->tb6_lock)));


  if (dir)
   rcu_assign_pointer(pn->right, in);
  else
   rcu_assign_pointer(pn->left, in);

  ln->fn_bit = plen;

  RCU_INIT_POINTER(ln->parent, in);
  rcu_assign_pointer(fn->parent, in);

  if (addr_bit_set(addr, bit)) {
   rcu_assign_pointer(in->right, ln);
   rcu_assign_pointer(in->left, fn);
  } else {
   rcu_assign_pointer(in->left, ln);
   rcu_assign_pointer(in->right, fn);
  }
 } else {







  ln = node_alloc(net);

  if (!ln)
   return ERR_PTR(-ENOMEM);

  ln->fn_bit = plen;

  RCU_INIT_POINTER(ln->parent, pn);

  if (addr_bit_set(&key->addr, plen))
   RCU_INIT_POINTER(ln->right, fn);
  else
   RCU_INIT_POINTER(ln->left, fn);

  rcu_assign_pointer(fn->parent, ln);

  if (dir)
   rcu_assign_pointer(pn->right, ln);
  else
   rcu_assign_pointer(pn->left, ln);
 }
 return ln;
}
