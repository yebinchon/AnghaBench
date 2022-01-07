
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlink_sock {int flags; } ;
struct TYPE_2__ {int sk; } ;


 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NETLINK_F_STRICT_CHK ;
 struct netlink_sock* nlk_sk (int ) ;

bool netlink_strict_get_check(struct sk_buff *skb)
{
 const struct netlink_sock *nlk = nlk_sk(NETLINK_CB(skb).sk);

 return nlk->flags & NETLINK_F_STRICT_CHK;
}
