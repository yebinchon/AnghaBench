
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lastuse; int lwtstate; int input; int output; scalar_t__ error; } ;
struct rt6_info {TYPE_3__ dst; } ;
struct fib6_result {int fib6_flags; scalar_t__ fib6_type; TYPE_2__* nh; struct fib6_info* f6i; } ;
struct TYPE_4__ {int addr; } ;
struct fib6_info {TYPE_1__ fib6_dst; } ;
struct TYPE_5__ {scalar_t__ fib_nh_lws; } ;


 int IPV6_ADDR_MULTICAST ;
 int RTF_REJECT ;
 scalar_t__ RTN_ANYCAST ;
 scalar_t__ RTN_LOCAL ;
 int ip6_forward ;
 int ip6_input ;
 int ip6_mc_input ;
 int ip6_output ;
 int ip6_rt_init_dst_reject (struct rt6_info*,scalar_t__) ;
 int ipv6_addr_type (int *) ;
 int jiffies ;
 int lwtstate_get (scalar_t__) ;
 int lwtunnel_set_redirect (TYPE_3__*) ;

__attribute__((used)) static void ip6_rt_init_dst(struct rt6_info *rt, const struct fib6_result *res)
{
 struct fib6_info *f6i = res->f6i;

 if (res->fib6_flags & RTF_REJECT) {
  ip6_rt_init_dst_reject(rt, res->fib6_type);
  return;
 }

 rt->dst.error = 0;
 rt->dst.output = ip6_output;

 if (res->fib6_type == RTN_LOCAL || res->fib6_type == RTN_ANYCAST) {
  rt->dst.input = ip6_input;
 } else if (ipv6_addr_type(&f6i->fib6_dst.addr) & IPV6_ADDR_MULTICAST) {
  rt->dst.input = ip6_mc_input;
 } else {
  rt->dst.input = ip6_forward;
 }

 if (res->nh->fib_nh_lws) {
  rt->dst.lwtstate = lwtstate_get(res->nh->fib_nh_lws);
  lwtunnel_set_redirect(&rt->dst);
 }

 rt->dst.lastuse = jiffies;
}
