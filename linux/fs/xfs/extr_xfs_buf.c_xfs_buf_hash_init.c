
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_buf_hash; int pag_buf_lock; } ;


 int rhashtable_init (int *,int *) ;
 int spin_lock_init (int *) ;
 int xfs_buf_hash_params ;

int
xfs_buf_hash_init(
 struct xfs_perag *pag)
{
 spin_lock_init(&pag->pag_buf_lock);
 return rhashtable_init(&pag->pag_buf_hash, &xfs_buf_hash_params);
}
