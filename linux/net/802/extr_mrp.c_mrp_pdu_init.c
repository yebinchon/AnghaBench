
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int protocol; TYPE_3__* dev; } ;
struct mrp_pdu_hdr {int version; } ;
struct mrp_applicant {struct sk_buff* pdu; TYPE_2__* app; TYPE_3__* dev; } ;
struct TYPE_6__ {scalar_t__ mtu; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int version; TYPE_1__ pkttype; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ LL_RESERVED_SPACE (TYPE_3__*) ;
 struct mrp_pdu_hdr* __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int mrp_pdu_init(struct mrp_applicant *app)
{
 struct sk_buff *skb;
 struct mrp_pdu_hdr *ph;

 skb = alloc_skb(app->dev->mtu + LL_RESERVED_SPACE(app->dev),
   GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 skb->dev = app->dev;
 skb->protocol = app->app->pkttype.type;
 skb_reserve(skb, LL_RESERVED_SPACE(app->dev));
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 ph = __skb_put(skb, sizeof(*ph));
 ph->version = app->app->version;

 app->pdu = skb;
 return 0;
}
