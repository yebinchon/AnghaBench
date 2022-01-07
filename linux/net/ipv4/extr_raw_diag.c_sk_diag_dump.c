
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct inet_diag_req_v2 {int dummy; } ;
struct TYPE_4__ {int portid; int sk; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int inet_diag_bc_sk (struct nlattr*,struct sock*) ;
 int inet_sk_diag_fill (struct sock*,int *,struct sk_buff*,struct inet_diag_req_v2 const*,int ,int ,int ,int ,TYPE_1__*,int) ;
 int sk_user_ns (int ) ;

__attribute__((used)) static int sk_diag_dump(struct sock *sk, struct sk_buff *skb,
   struct netlink_callback *cb,
   const struct inet_diag_req_v2 *r,
   struct nlattr *bc, bool net_admin)
{
 if (!inet_diag_bc_sk(bc, sk))
  return 0;

 return inet_sk_diag_fill(sk, ((void*)0), skb, r,
     sk_user_ns(NETLINK_CB(cb->skb).sk),
     NETLINK_CB(cb->skb).portid,
     cb->nlh->nlmsg_seq, NLM_F_MULTI,
     cb->nlh, net_admin);
}
