
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_dev_link_ops ;
 int ovs_internal_vport_ops ;
 int ovs_vport_ops_register (int *) ;
 int rtnl_link_register (int *) ;
 int rtnl_link_unregister (int *) ;

int ovs_internal_dev_rtnl_link_register(void)
{
 int err;

 err = rtnl_link_register(&internal_dev_link_ops);
 if (err < 0)
  return err;

 err = ovs_vport_ops_register(&ovs_internal_vport_ops);
 if (err < 0)
  rtnl_link_unregister(&internal_dev_link_ops);

 return err;
}
