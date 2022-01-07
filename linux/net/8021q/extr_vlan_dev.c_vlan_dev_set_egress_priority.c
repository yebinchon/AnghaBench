
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vlan_priority_tci_mapping {int priority; int vlan_qos; struct vlan_priority_tci_mapping* next; } ;
struct vlan_dev_priv {int nr_egress_mappings; struct vlan_priority_tci_mapping** egress_priority_map; } ;
struct net_device {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 struct vlan_priority_tci_mapping* kmalloc (int,int ) ;
 int smp_wmb () ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device const*) ;

int vlan_dev_set_egress_priority(const struct net_device *dev,
     u32 skb_prio, u16 vlan_prio)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct vlan_priority_tci_mapping *mp = ((void*)0);
 struct vlan_priority_tci_mapping *np;
 u32 vlan_qos = (vlan_prio << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;


 mp = vlan->egress_priority_map[skb_prio & 0xF];
 while (mp) {
  if (mp->priority == skb_prio) {
   if (mp->vlan_qos && !vlan_qos)
    vlan->nr_egress_mappings--;
   else if (!mp->vlan_qos && vlan_qos)
    vlan->nr_egress_mappings++;
   mp->vlan_qos = vlan_qos;
   return 0;
  }
  mp = mp->next;
 }


 mp = vlan->egress_priority_map[skb_prio & 0xF];
 np = kmalloc(sizeof(struct vlan_priority_tci_mapping), GFP_KERNEL);
 if (!np)
  return -ENOBUFS;

 np->next = mp;
 np->priority = skb_prio;
 np->vlan_qos = vlan_qos;




 smp_wmb();
 vlan->egress_priority_map[skb_prio & 0xF] = np;
 if (vlan_qos)
  vlan->nr_egress_mappings++;
 return 0;
}
