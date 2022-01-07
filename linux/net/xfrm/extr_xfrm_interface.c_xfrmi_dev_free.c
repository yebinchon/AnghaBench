
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if {int gro_cells; } ;
struct net_device {int tstats; } ;


 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct xfrm_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xfrmi_dev_free(struct net_device *dev)
{
 struct xfrm_if *xi = netdev_priv(dev);

 gro_cells_destroy(&xi->gro_cells);
 free_percpu(dev->tstats);
}
