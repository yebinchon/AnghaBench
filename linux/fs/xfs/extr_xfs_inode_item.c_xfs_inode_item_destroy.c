
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* i_itemp; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_5__ {int li_lv_shadow; } ;
struct TYPE_7__ {TYPE_1__ ili_item; } ;


 int kmem_free (int ) ;
 int kmem_zone_free (int ,TYPE_4__*) ;
 int xfs_ili_zone ;

void
xfs_inode_item_destroy(
 xfs_inode_t *ip)
{
 kmem_free(ip->i_itemp->ili_item.li_lv_shadow);
 kmem_zone_free(xfs_ili_zone, ip->i_itemp);
}
