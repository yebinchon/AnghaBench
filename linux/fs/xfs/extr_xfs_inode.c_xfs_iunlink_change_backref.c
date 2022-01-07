
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agino_t ;
struct xfs_perag {int pagi_unlinked_hash; } ;
struct xfs_iunlink {scalar_t__ iu_next_unlinked; int iu_rhash_head; } ;


 scalar_t__ NULLAGINO ;
 int kmem_free (struct xfs_iunlink*) ;
 struct xfs_iunlink* rhashtable_lookup_fast (int *,scalar_t__*,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int xfs_iunlink_hash_params ;
 int xfs_iunlink_insert_backref (struct xfs_perag*,struct xfs_iunlink*) ;

__attribute__((used)) static int
xfs_iunlink_change_backref(
 struct xfs_perag *pag,
 xfs_agino_t agino,
 xfs_agino_t next_unlinked)
{
 struct xfs_iunlink *iu;
 int error;


 iu = rhashtable_lookup_fast(&pag->pagi_unlinked_hash, &agino,
   xfs_iunlink_hash_params);
 if (!iu)
  return 0;
 error = rhashtable_remove_fast(&pag->pagi_unlinked_hash,
   &iu->iu_rhash_head, xfs_iunlink_hash_params);
 if (error)
  return error;


 if (next_unlinked == NULLAGINO) {
  kmem_free(iu);
  return 0;
 }


 iu->iu_next_unlinked = next_unlinked;
 return xfs_iunlink_insert_backref(pag, iu);
}
