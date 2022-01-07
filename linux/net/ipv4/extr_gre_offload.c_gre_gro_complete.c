
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int encapsulation; scalar_t__ data; } ;
struct TYPE_3__ {int (* gro_complete ) (struct sk_buff*,int) ;} ;
struct packet_offload {TYPE_1__ callbacks; } ;
struct gre_base_hdr {int flags; int protocol; } ;
typedef int __be16 ;
struct TYPE_4__ {int gso_type; } ;


 int ENOENT ;
 int GRE_CSUM ;
 scalar_t__ GRE_HEADER_SECTION ;
 int GRE_KEY ;
 int SKB_GSO_GRE ;
 struct packet_offload* gro_find_complete_by_type (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_set_inner_mac_header (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int stub1 (struct sk_buff*,int) ;

__attribute__((used)) static int gre_gro_complete(struct sk_buff *skb, int nhoff)
{
 struct gre_base_hdr *greh = (struct gre_base_hdr *)(skb->data + nhoff);
 struct packet_offload *ptype;
 unsigned int grehlen = sizeof(*greh);
 int err = -ENOENT;
 __be16 type;

 skb->encapsulation = 1;
 skb_shinfo(skb)->gso_type = SKB_GSO_GRE;

 type = greh->protocol;
 if (greh->flags & GRE_KEY)
  grehlen += GRE_HEADER_SECTION;

 if (greh->flags & GRE_CSUM)
  grehlen += GRE_HEADER_SECTION;

 rcu_read_lock();
 ptype = gro_find_complete_by_type(type);
 if (ptype)
  err = ptype->callbacks.gro_complete(skb, nhoff + grehlen);

 rcu_read_unlock();

 skb_set_inner_mac_header(skb, nhoff + grehlen);

 return err;
}
