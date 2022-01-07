
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pagi_unlinked_hash; } ;


 int rhashtable_init (int *,int *) ;
 int xfs_iunlink_hash_params ;

int
xfs_iunlink_init(
 struct xfs_perag *pag)
{
 return rhashtable_init(&pag->pagi_unlinked_hash,
   &xfs_iunlink_hash_params);
}
