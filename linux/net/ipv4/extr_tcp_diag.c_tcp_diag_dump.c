
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int inet_diag_dump_icsk (int *,struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ;
 int tcp_hashinfo ;

__attribute__((used)) static void tcp_diag_dump(struct sk_buff *skb, struct netlink_callback *cb,
     const struct inet_diag_req_v2 *r, struct nlattr *bc)
{
 inet_diag_dump_icsk(&tcp_hashinfo, skb, cb, r, bc);
}
