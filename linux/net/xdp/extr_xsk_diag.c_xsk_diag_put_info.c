
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {int queue_id; TYPE_1__* dev; } ;
struct xdp_diag_info {int queue_id; int ifindex; } ;
struct sk_buff {int dummy; } ;
typedef int di ;
struct TYPE_2__ {int ifindex; } ;


 int XDP_DIAG_INFO ;
 int nla_put (struct sk_buff*,int ,int,struct xdp_diag_info*) ;

__attribute__((used)) static int xsk_diag_put_info(const struct xdp_sock *xs, struct sk_buff *nlskb)
{
 struct xdp_diag_info di = {};

 di.ifindex = xs->dev ? xs->dev->ifindex : 0;
 di.queue_id = xs->queue_id;
 return nla_put(nlskb, XDP_DIAG_INFO, sizeof(di), &di);
}
