
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int * vlan_pcpu_stats; } ;
struct net_device {int dummy; } ;


 int free_percpu (int *) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static void vlan_dev_free(struct net_device *dev)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);

 free_percpu(vlan->vlan_pcpu_stats);
 vlan->vlan_pcpu_stats = ((void*)0);
}
