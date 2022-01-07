
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; struct dsa_port* dsa_ptr; } ;
struct dsa_port {int * orig_ethtool_ops; } ;



__attribute__((used)) static void dsa_master_ethtool_teardown(struct net_device *dev)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;

 dev->ethtool_ops = cpu_dp->orig_ethtool_ops;
 cpu_dp->orig_ethtool_ops = ((void*)0);
}
