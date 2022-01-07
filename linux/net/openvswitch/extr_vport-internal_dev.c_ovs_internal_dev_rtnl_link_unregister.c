
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_dev_link_ops ;
 int ovs_internal_vport_ops ;
 int ovs_vport_ops_unregister (int *) ;
 int rtnl_link_unregister (int *) ;

void ovs_internal_dev_rtnl_link_unregister(void)
{
 ovs_vport_ops_unregister(&ovs_internal_vport_ops);
 rtnl_link_unregister(&internal_dev_link_ops);
}
