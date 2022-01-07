
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int dummy; } ;
struct fib6_result {int dummy; } ;



__attribute__((used)) static void
eafnosupport_fib6_select_path(const struct net *net, struct fib6_result *res,
         struct flowi6 *fl6, int oif, bool have_oif_match,
         const struct sk_buff *skb, int strict)
{
}
