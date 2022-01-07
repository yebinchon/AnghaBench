
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vlan_net {int name_type; } ;
struct vlan_dev_priv {int flags; int * dent; struct net_device* real_dev; scalar_t__ vlan_id; int vlan_proto; } ;
struct net_device {char* name; scalar_t__ reg_state; int * rtnl_link_ops; int mtu; } ;
struct net {int dummy; } ;


 int ENOBUFS ;
 int ERANGE ;
 int ETH_P_8021Q ;
 int IFNAMSIZ ;
 scalar_t__ NETREG_UNINITIALIZED ;
 int NET_NAME_UNKNOWN ;
 int VLAN_FLAG_REORDER_HDR ;




 scalar_t__ VLAN_VID_MASK ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 struct net* dev_net (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int htons (int ) ;
 struct vlan_net* net_generic (struct net*,int ) ;
 int register_vlan_dev (struct net_device*,int *) ;
 int snprintf (char*,int,char*,scalar_t__,...) ;
 int vlan_check_real_dev (struct net_device*,int ,scalar_t__,int *) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;
 int vlan_link_ops ;
 int vlan_net_id ;
 int vlan_setup ;

__attribute__((used)) static int register_vlan_device(struct net_device *real_dev, u16 vlan_id)
{
 struct net_device *new_dev;
 struct vlan_dev_priv *vlan;
 struct net *net = dev_net(real_dev);
 struct vlan_net *vn = net_generic(net, vlan_net_id);
 char name[IFNAMSIZ];
 int err;

 if (vlan_id >= VLAN_VID_MASK)
  return -ERANGE;

 err = vlan_check_real_dev(real_dev, htons(ETH_P_8021Q), vlan_id,
      ((void*)0));
 if (err < 0)
  return err;


 switch (vn->name_type) {
 case 129:

  snprintf(name, IFNAMSIZ, "%s.%.4i", real_dev->name, vlan_id);
  break;
 case 130:



  snprintf(name, IFNAMSIZ, "vlan%i", vlan_id);
  break;
 case 128:



  snprintf(name, IFNAMSIZ, "%s.%i", real_dev->name, vlan_id);
  break;
 case 131:



 default:
  snprintf(name, IFNAMSIZ, "vlan%.4i", vlan_id);
 }

 new_dev = alloc_netdev(sizeof(struct vlan_dev_priv), name,
          NET_NAME_UNKNOWN, vlan_setup);

 if (new_dev == ((void*)0))
  return -ENOBUFS;

 dev_net_set(new_dev, net);



 new_dev->mtu = real_dev->mtu;

 vlan = vlan_dev_priv(new_dev);
 vlan->vlan_proto = htons(ETH_P_8021Q);
 vlan->vlan_id = vlan_id;
 vlan->real_dev = real_dev;
 vlan->dent = ((void*)0);
 vlan->flags = VLAN_FLAG_REORDER_HDR;

 new_dev->rtnl_link_ops = &vlan_link_ops;
 err = register_vlan_dev(new_dev, ((void*)0));
 if (err < 0)
  goto out_free_newdev;

 return 0;

out_free_newdev:
 if (new_dev->reg_state == NETREG_UNINITIALIZED)
  free_netdev(new_dev);
 return err;
}
