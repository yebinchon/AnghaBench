
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int udp_dump_one (int *,struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2 const*) ;
 int udplite_table ;

__attribute__((used)) static int udplite_diag_dump_one(struct sk_buff *in_skb, const struct nlmsghdr *nlh,
     const struct inet_diag_req_v2 *req)
{
 return udp_dump_one(&udplite_table, in_skb, nlh, req);
}
