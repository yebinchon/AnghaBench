
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_buf_hash; } ;


 int rhashtable_destroy (int *) ;

void
xfs_buf_hash_destroy(
 struct xfs_perag *pag)
{
 rhashtable_destroy(&pag->pag_buf_hash);
}
