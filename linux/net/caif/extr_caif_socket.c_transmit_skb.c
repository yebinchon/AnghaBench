
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int cb; } ;
struct cfpkt {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dn; } ;
struct TYPE_4__ {int sk_priority; } ;
struct caifsock {TYPE_2__ layer; TYPE_1__ sk; } ;
struct caif_payload_info {int dummy; } ;
struct TYPE_6__ {int (* transmit ) (TYPE_3__*,struct cfpkt*) ;} ;


 int CAIF_DIR_OUT ;
 int EINVAL ;
 struct cfpkt* cfpkt_fromnative (int ,struct sk_buff*) ;
 int cfpkt_set_prio (struct cfpkt*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int stub1 (TYPE_3__*,struct cfpkt*) ;

__attribute__((used)) static int transmit_skb(struct sk_buff *skb, struct caifsock *cf_sk,
   int noblock, long timeo)
{
 struct cfpkt *pkt;

 pkt = cfpkt_fromnative(CAIF_DIR_OUT, skb);
 memset(skb->cb, 0, sizeof(struct caif_payload_info));
 cfpkt_set_prio(pkt, cf_sk->sk.sk_priority);

 if (cf_sk->layer.dn == ((void*)0)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 return cf_sk->layer.dn->transmit(cf_sk->layer.dn, pkt);
}
