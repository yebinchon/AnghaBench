
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_proto_data {int dummy; } ;
struct ip_vs_conn {int lock; } ;


 int set_sctp_state (struct ip_vs_proto_data*,struct ip_vs_conn*,int,struct sk_buff const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
sctp_state_transition(struct ip_vs_conn *cp, int direction,
  const struct sk_buff *skb, struct ip_vs_proto_data *pd)
{
 spin_lock_bh(&cp->lock);
 set_sctp_state(pd, cp, direction, skb);
 spin_unlock_bh(&cp->lock);
}
