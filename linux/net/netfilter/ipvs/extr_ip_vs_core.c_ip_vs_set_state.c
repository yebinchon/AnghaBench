
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_vs_proto_data {TYPE_1__* pp; } ;
struct ip_vs_conn {int dummy; } ;
struct TYPE_2__ {int (* state_transition ) (struct ip_vs_conn*,int,struct sk_buff const*,struct ip_vs_proto_data*) ;} ;


 scalar_t__ likely (int (*) (struct ip_vs_conn*,int,struct sk_buff const*,struct ip_vs_proto_data*)) ;
 int stub1 (struct ip_vs_conn*,int,struct sk_buff const*,struct ip_vs_proto_data*) ;

__attribute__((used)) static inline void
ip_vs_set_state(struct ip_vs_conn *cp, int direction,
  const struct sk_buff *skb,
  struct ip_vs_proto_data *pd)
{
 if (likely(pd->pp->state_transition))
  pd->pp->state_transition(cp, direction, skb, pd);
}
