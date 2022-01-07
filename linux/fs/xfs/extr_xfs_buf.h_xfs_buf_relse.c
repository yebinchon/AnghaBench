
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_buf_t ;


 int xfs_buf_rele (int *) ;
 int xfs_buf_unlock (int *) ;

__attribute__((used)) static inline void xfs_buf_relse(xfs_buf_t *bp)
{
 xfs_buf_unlock(bp);
 xfs_buf_rele(bp);
}
