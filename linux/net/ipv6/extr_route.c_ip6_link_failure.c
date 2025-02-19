
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rt6_info {int rt6i_flags; int from; } ;
struct fib6_node {int fn_sernum; } ;
struct fib6_info {int fib6_node; } ;


 int ICMPV6_ADDR_UNREACH ;
 int ICMPV6_DEST_UNREACH ;
 int RTF_CACHE ;
 int RTF_DEFAULT ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rt6_remove_exception_rt (struct rt6_info*) ;
 scalar_t__ skb_dst (struct sk_buff*) ;

__attribute__((used)) static void ip6_link_failure(struct sk_buff *skb)
{
 struct rt6_info *rt;

 icmpv6_send(skb, ICMPV6_DEST_UNREACH, ICMPV6_ADDR_UNREACH, 0);

 rt = (struct rt6_info *) skb_dst(skb);
 if (rt) {
  rcu_read_lock();
  if (rt->rt6i_flags & RTF_CACHE) {
   rt6_remove_exception_rt(rt);
  } else {
   struct fib6_info *from;
   struct fib6_node *fn;

   from = rcu_dereference(rt->from);
   if (from) {
    fn = rcu_dereference(from->fib6_node);
    if (fn && (rt->rt6i_flags & RTF_DEFAULT))
     fn->fn_sernum = -1;
   }
  }
  rcu_read_unlock();
 }
}
