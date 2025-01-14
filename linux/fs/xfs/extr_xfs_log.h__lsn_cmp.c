
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;


 scalar_t__ BLOCK_LSN (int) ;
 scalar_t__ CYCLE_LSN (int) ;

__attribute__((used)) static inline xfs_lsn_t _lsn_cmp(xfs_lsn_t lsn1, xfs_lsn_t lsn2)
{
 if (CYCLE_LSN(lsn1) != CYCLE_LSN(lsn2))
  return (CYCLE_LSN(lsn1)<CYCLE_LSN(lsn2))? -999 : 999;

 if (BLOCK_LSN(lsn1) != BLOCK_LSN(lsn2))
  return (BLOCK_LSN(lsn1)<BLOCK_LSN(lsn2))? -999 : 999;

 return 0;
}
