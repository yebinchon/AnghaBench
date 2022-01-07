
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int index; } ;
struct dsa_switch {struct devlink* devlink; struct dsa_switch_tree* dst; } ;
struct devlink_port {int dummy; } ;
struct dsa_port {int type; int slave; int dn; int mac; int index; struct devlink_port devlink_port; struct dsa_switch* ds; } ;
struct devlink {int dummy; } ;


 int DEVLINK_PORT_FLAVOUR_CPU ;
 int DEVLINK_PORT_FLAVOUR_DSA ;
 int DEVLINK_PORT_FLAVOUR_PHYSICAL ;




 int devlink_port_attrs_set (struct devlink_port*,int ,int ,int,int ,unsigned char const*,unsigned char const) ;
 int devlink_port_register (struct devlink*,struct devlink_port*,int ) ;
 int devlink_port_type_eth_set (struct devlink_port*,int ) ;
 int devlink_port_unregister (struct devlink_port*) ;
 int dsa_port_disable (struct dsa_port*) ;
 int dsa_port_enable (struct dsa_port*,int *) ;
 int dsa_port_link_register_of (struct dsa_port*) ;
 int dsa_port_link_unregister_of (struct dsa_port*) ;
 int dsa_slave_create (struct dsa_port*) ;
 int memset (struct devlink_port*,int ,int) ;
 int of_get_mac_address (int ) ;

__attribute__((used)) static int dsa_port_setup(struct dsa_port *dp)
{
 struct dsa_switch *ds = dp->ds;
 struct dsa_switch_tree *dst = ds->dst;
 const unsigned char *id = (const unsigned char *)&dst->index;
 const unsigned char len = sizeof(dst->index);
 struct devlink_port *dlp = &dp->devlink_port;
 bool dsa_port_link_registered = 0;
 bool devlink_port_registered = 0;
 struct devlink *dl = ds->devlink;
 bool dsa_port_enabled = 0;
 int err = 0;

 switch (dp->type) {
 case 129:
  dsa_port_disable(dp);
  break;
 case 131:
  memset(dlp, 0, sizeof(*dlp));
  devlink_port_attrs_set(dlp, DEVLINK_PORT_FLAVOUR_CPU,
           dp->index, 0, 0, id, len);
  err = devlink_port_register(dl, dlp, dp->index);
  if (err)
   break;
  devlink_port_registered = 1;

  err = dsa_port_link_register_of(dp);
  if (err)
   break;
  dsa_port_link_registered = 1;

  err = dsa_port_enable(dp, ((void*)0));
  if (err)
   break;
  dsa_port_enabled = 1;

  break;
 case 130:
  memset(dlp, 0, sizeof(*dlp));
  devlink_port_attrs_set(dlp, DEVLINK_PORT_FLAVOUR_DSA,
           dp->index, 0, 0, id, len);
  err = devlink_port_register(dl, dlp, dp->index);
  if (err)
   break;
  devlink_port_registered = 1;

  err = dsa_port_link_register_of(dp);
  if (err)
   break;
  dsa_port_link_registered = 1;

  err = dsa_port_enable(dp, ((void*)0));
  if (err)
   break;
  dsa_port_enabled = 1;

  break;
 case 128:
  memset(dlp, 0, sizeof(*dlp));
  devlink_port_attrs_set(dlp, DEVLINK_PORT_FLAVOUR_PHYSICAL,
           dp->index, 0, 0, id, len);
  err = devlink_port_register(dl, dlp, dp->index);
  if (err)
   break;
  devlink_port_registered = 1;

  dp->mac = of_get_mac_address(dp->dn);
  err = dsa_slave_create(dp);
  if (err)
   break;

  devlink_port_type_eth_set(dlp, dp->slave);
  break;
 }

 if (err && dsa_port_enabled)
  dsa_port_disable(dp);
 if (err && dsa_port_link_registered)
  dsa_port_link_unregister_of(dp);
 if (err && devlink_port_registered)
  devlink_port_unregister(dlp);

 return err;
}
