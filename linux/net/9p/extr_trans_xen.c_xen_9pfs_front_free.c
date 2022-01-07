
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in; } ;
struct xen_9pfs_front_priv {int num_rings; scalar_t__ irq; struct xen_9pfs_front_priv* tag; struct xen_9pfs_front_priv* rings; TYPE_2__* intf; int ref; TYPE_1__ data; int dev; int list; } ;
typedef int grant_ref_t ;
struct TYPE_4__ {int * ref; } ;


 scalar_t__ PAGE_SHIFT ;
 int XEN_9PFS_RING_ORDER ;
 scalar_t__ XEN_PAGE_SHIFT ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,scalar_t__) ;
 int gnttab_end_foreign_access (int ,int ,int ) ;
 int kfree (struct xen_9pfs_front_priv*) ;
 int list_del (int *) ;
 int unbind_from_irqhandler (scalar_t__,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;
 int xen_9pfs_lock ;

__attribute__((used)) static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
{
 int i, j;

 write_lock(&xen_9pfs_lock);
 list_del(&priv->list);
 write_unlock(&xen_9pfs_lock);

 for (i = 0; i < priv->num_rings; i++) {
  if (!priv->rings[i].intf)
   break;
  if (priv->rings[i].irq > 0)
   unbind_from_irqhandler(priv->rings[i].irq, priv->dev);
  if (priv->rings[i].data.in) {
   for (j = 0; j < (1 << XEN_9PFS_RING_ORDER); j++) {
    grant_ref_t ref;

    ref = priv->rings[i].intf->ref[j];
    gnttab_end_foreign_access(ref, 0, 0);
   }
   free_pages((unsigned long)priv->rings[i].data.in,
       XEN_9PFS_RING_ORDER -
       (PAGE_SHIFT - XEN_PAGE_SHIFT));
  }
  gnttab_end_foreign_access(priv->rings[i].ref, 0, 0);
  free_page((unsigned long)priv->rings[i].intf);
 }
 kfree(priv->rings);
 kfree(priv->tag);
 kfree(priv);
}
