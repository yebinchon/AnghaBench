
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int dummy; } ;
struct dsa_port {int type; int * slave; int tag_ops; struct devlink_port devlink_port; } ;






 int devlink_port_unregister (struct devlink_port*) ;
 int dsa_port_disable (struct dsa_port*) ;
 int dsa_port_link_unregister_of (struct dsa_port*) ;
 int dsa_slave_destroy (int *) ;
 int dsa_tag_driver_put (int ) ;

__attribute__((used)) static void dsa_port_teardown(struct dsa_port *dp)
{
 struct devlink_port *dlp = &dp->devlink_port;

 switch (dp->type) {
 case 129:
  break;
 case 131:
  dsa_port_disable(dp);
  dsa_tag_driver_put(dp->tag_ops);
  devlink_port_unregister(dlp);
  dsa_port_link_unregister_of(dp);
  break;
 case 130:
  dsa_port_disable(dp);
  devlink_port_unregister(dlp);
  dsa_port_link_unregister_of(dp);
  break;
 case 128:
  devlink_port_unregister(dlp);
  if (dp->slave) {
   dsa_slave_destroy(dp->slave);
   dp->slave = ((void*)0);
  }
  break;
 }
}
