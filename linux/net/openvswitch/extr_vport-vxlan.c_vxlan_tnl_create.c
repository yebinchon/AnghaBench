
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vxlan_config {int no_share; int flags; int dst_port; int mtu; } ;
struct vport_parms {int name; struct nlattr* options; int dp; } ;
struct vport {int flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;


 int EINVAL ;
 struct vport* ERR_CAST (struct vport*) ;
 struct vport* ERR_PTR (int) ;
 int IFF_UP ;
 int IP_MAX_MTU ;
 scalar_t__ IS_ERR (struct vport*) ;
 int NET_NAME_USER ;
 int OVS_TUNNEL_ATTR_DST_PORT ;
 int OVS_TUNNEL_ATTR_EXTENSION ;
 int VXLAN_F_COLLECT_METADATA ;
 int VXLAN_F_UDP_ZERO_CSUM6_RX ;
 int dev_change_flags (struct vport*,int,int *) ;
 int htons (int ) ;
 struct nlattr* nla_find_nested (struct nlattr*,int ) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct net* ovs_dp_get_net (int ) ;
 struct vport* ovs_vport_alloc (int ,int *,struct vport_parms const*) ;
 int ovs_vport_free (struct vport*) ;
 int ovs_vxlan_netdev_vport_ops ;
 int rtnl_delete_link (struct vport*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int vxlan_configure_exts (struct vport*,struct nlattr*,struct vxlan_config*) ;
 struct vport* vxlan_dev_create (struct net*,int ,int ,struct vxlan_config*) ;

__attribute__((used)) static struct vport *vxlan_tnl_create(const struct vport_parms *parms)
{
 struct net *net = ovs_dp_get_net(parms->dp);
 struct nlattr *options = parms->options;
 struct net_device *dev;
 struct vport *vport;
 struct nlattr *a;
 int err;
 struct vxlan_config conf = {
  .no_share = 1,
  .flags = VXLAN_F_COLLECT_METADATA | VXLAN_F_UDP_ZERO_CSUM6_RX,

  .mtu = IP_MAX_MTU,
 };

 if (!options) {
  err = -EINVAL;
  goto error;
 }

 a = nla_find_nested(options, OVS_TUNNEL_ATTR_DST_PORT);
 if (a && nla_len(a) == sizeof(u16)) {
  conf.dst_port = htons(nla_get_u16(a));
 } else {

  err = -EINVAL;
  goto error;
 }

 vport = ovs_vport_alloc(0, &ovs_vxlan_netdev_vport_ops, parms);
 if (IS_ERR(vport))
  return vport;

 a = nla_find_nested(options, OVS_TUNNEL_ATTR_EXTENSION);
 if (a) {
  err = vxlan_configure_exts(vport, a, &conf);
  if (err) {
   ovs_vport_free(vport);
   goto error;
  }
 }

 rtnl_lock();
 dev = vxlan_dev_create(net, parms->name, NET_NAME_USER, &conf);
 if (IS_ERR(dev)) {
  rtnl_unlock();
  ovs_vport_free(vport);
  return ERR_CAST(dev);
 }

 err = dev_change_flags(dev, dev->flags | IFF_UP, ((void*)0));
 if (err < 0) {
  rtnl_delete_link(dev);
  rtnl_unlock();
  ovs_vport_free(vport);
  goto error;
 }

 rtnl_unlock();
 return vport;
error:
 return ERR_PTR(err);
}
