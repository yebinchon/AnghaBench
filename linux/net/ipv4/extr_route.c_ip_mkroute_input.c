
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct in_device {int dummy; } ;
struct flow_keys {int dummy; } ;
struct fib_result {TYPE_1__* fi; } ;
typedef int __be32 ;
struct TYPE_2__ {int fib_net; } ;


 int __mkroute_input (struct sk_buff*,struct fib_result*,struct in_device*,int ,int ,int ) ;
 int fib_info_num_path (TYPE_1__*) ;
 int fib_multipath_hash (int ,int *,struct sk_buff*,struct flow_keys*) ;
 int fib_select_multipath (struct fib_result*,int) ;

__attribute__((used)) static int ip_mkroute_input(struct sk_buff *skb,
       struct fib_result *res,
       struct in_device *in_dev,
       __be32 daddr, __be32 saddr, u32 tos,
       struct flow_keys *hkeys)
{
 return __mkroute_input(skb, res, in_dev, daddr, saddr, tos);
}
