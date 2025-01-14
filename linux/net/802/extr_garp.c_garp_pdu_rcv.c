
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_proto {struct garp_application* data; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int garp_port; } ;
struct garp_port {int * applicants; } ;
struct garp_pdu_hdr {int protocol; } ;
struct garp_application {size_t type; } ;
struct garp_applicant {int lock; } ;


 int GARP_PROTOCOL_ID ;
 scalar_t__ garp_pdu_parse_end_mark (struct sk_buff*) ;
 scalar_t__ garp_pdu_parse_msg (struct garp_applicant*,struct sk_buff*) ;
 scalar_t__ get_unaligned (int *) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 void* rcu_dereference (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void garp_pdu_rcv(const struct stp_proto *proto, struct sk_buff *skb,
    struct net_device *dev)
{
 struct garp_application *appl = proto->data;
 struct garp_port *port;
 struct garp_applicant *app;
 const struct garp_pdu_hdr *gp;

 port = rcu_dereference(dev->garp_port);
 if (!port)
  goto err;
 app = rcu_dereference(port->applicants[appl->type]);
 if (!app)
  goto err;

 if (!pskb_may_pull(skb, sizeof(*gp)))
  goto err;
 gp = (struct garp_pdu_hdr *)skb->data;
 if (get_unaligned(&gp->protocol) != htons(GARP_PROTOCOL_ID))
  goto err;
 skb_pull(skb, sizeof(*gp));

 spin_lock(&app->lock);
 while (skb->len > 0) {
  if (garp_pdu_parse_msg(app, skb) < 0)
   break;
  if (garp_pdu_parse_end_mark(skb) < 0)
   break;
 }
 spin_unlock(&app->lock);
err:
 kfree_skb(skb);
}
