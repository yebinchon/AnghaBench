
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_mount; int pagi_unlinked_hash; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int rhashtable_free_and_destroy (int *,int ,int*) ;
 int xfs_iunlink_free_item ;

void
xfs_iunlink_destroy(
 struct xfs_perag *pag)
{
 bool freed_anything = 0;

 rhashtable_free_and_destroy(&pag->pagi_unlinked_hash,
   xfs_iunlink_free_item, &freed_anything);

 ASSERT(freed_anything == 0 || XFS_FORCED_SHUTDOWN(pag->pag_mount));
}
