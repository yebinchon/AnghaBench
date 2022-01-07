
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int input; int output; int error; } ;
struct rt6_info {TYPE_1__ dst; } ;






 int dst_discard ;
 int dst_discard_out ;
 int ip6_pkt_discard ;
 int ip6_pkt_discard_out ;
 int ip6_pkt_prohibit ;
 int ip6_pkt_prohibit_out ;
 int ip6_rt_type_to_error (int) ;

__attribute__((used)) static void ip6_rt_init_dst_reject(struct rt6_info *rt, u8 fib6_type)
{
 rt->dst.error = ip6_rt_type_to_error(fib6_type);

 switch (fib6_type) {
 case 131:
  rt->dst.output = dst_discard_out;
  rt->dst.input = dst_discard;
  break;
 case 130:
  rt->dst.output = ip6_pkt_prohibit_out;
  rt->dst.input = ip6_pkt_prohibit;
  break;
 case 129:
 case 128:
 default:
  rt->dst.output = ip6_pkt_discard_out;
  rt->dst.input = ip6_pkt_discard;
  break;
 }
}
