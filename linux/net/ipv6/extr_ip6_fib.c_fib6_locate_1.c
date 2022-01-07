
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt6key {int addr; } ;
struct in6_addr {int dummy; } ;
struct fib6_node {int fn_bit; int fn_flags; int left; int right; int leaf; } ;
struct fib6_info {int dummy; } ;


 int RTN_RTINFO ;
 scalar_t__ addr_bit_set (struct in6_addr const*,int) ;
 int ipv6_prefix_equal (int *,struct in6_addr const*,int) ;
 void* rcu_dereference (int ) ;

__attribute__((used)) static struct fib6_node *fib6_locate_1(struct fib6_node *root,
           const struct in6_addr *addr,
           int plen, int offset,
           bool exact_match)
{
 struct fib6_node *fn, *prev = ((void*)0);

 for (fn = root; fn ; ) {
  struct fib6_info *leaf = rcu_dereference(fn->leaf);
  struct rt6key *key;


  if (!leaf) {
   if (plen <= fn->fn_bit)
    goto out;
   else
    goto next;
  }

  key = (struct rt6key *)((u8 *)leaf + offset);




  if (plen < fn->fn_bit ||
      !ipv6_prefix_equal(&key->addr, addr, fn->fn_bit))
   goto out;

  if (plen == fn->fn_bit)
   return fn;

  if (fn->fn_flags & RTN_RTINFO)
   prev = fn;

next:



  if (addr_bit_set(addr, fn->fn_bit))
   fn = rcu_dereference(fn->right);
  else
   fn = rcu_dereference(fn->left);
 }
out:
 if (exact_match)
  return ((void*)0);
 else
  return prev;
}
