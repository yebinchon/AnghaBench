
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct xen_9pfs_front_priv {int dummy; } ;


 struct xen_9pfs_front_priv* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int xen_9pfs_front_free (struct xen_9pfs_front_priv*) ;

__attribute__((used)) static int xen_9pfs_front_remove(struct xenbus_device *dev)
{
 struct xen_9pfs_front_priv *priv = dev_get_drvdata(&dev->dev);

 dev_set_drvdata(&dev->dev, ((void*)0));
 xen_9pfs_front_free(priv);
 return 0;
}
