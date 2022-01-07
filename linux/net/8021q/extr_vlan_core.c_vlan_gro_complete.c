
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_hdr {int h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int (* gro_complete ) (struct sk_buff*,int) ;} ;
struct packet_offload {TYPE_1__ callbacks; } ;
typedef int __be16 ;


 int ENOENT ;
 struct packet_offload* gro_find_complete_by_type (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,int) ;

__attribute__((used)) static int vlan_gro_complete(struct sk_buff *skb, int nhoff)
{
 struct vlan_hdr *vhdr = (struct vlan_hdr *)(skb->data + nhoff);
 __be16 type = vhdr->h_vlan_encapsulated_proto;
 struct packet_offload *ptype;
 int err = -ENOENT;

 rcu_read_lock();
 ptype = gro_find_complete_by_type(type);
 if (ptype)
  err = ptype->callbacks.gro_complete(skb, nhoff + sizeof(*vhdr));

 rcu_read_unlock();
 return err;
}
