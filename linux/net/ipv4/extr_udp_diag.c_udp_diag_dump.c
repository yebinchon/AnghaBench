
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int udp_dump (int *,struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ;
 int udp_table ;

__attribute__((used)) static void udp_diag_dump(struct sk_buff *skb, struct netlink_callback *cb,
     const struct inet_diag_req_v2 *r, struct nlattr *bc)
{
 udp_dump(&udp_table, skb, cb, r, bc);
}
