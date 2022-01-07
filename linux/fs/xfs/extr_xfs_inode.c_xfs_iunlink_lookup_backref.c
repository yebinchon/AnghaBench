
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agino_t ;
struct xfs_perag {int pagi_unlinked_hash; } ;
struct xfs_iunlink {int iu_agino; } ;


 int NULLAGINO ;
 struct xfs_iunlink* rhashtable_lookup_fast (int *,int *,int ) ;
 int xfs_iunlink_hash_params ;

__attribute__((used)) static xfs_agino_t
xfs_iunlink_lookup_backref(
 struct xfs_perag *pag,
 xfs_agino_t agino)
{
 struct xfs_iunlink *iu;

 iu = rhashtable_lookup_fast(&pag->pagi_unlinked_hash, &agino,
   xfs_iunlink_hash_params);
 return iu ? iu->iu_agino : NULLAGINO;
}
