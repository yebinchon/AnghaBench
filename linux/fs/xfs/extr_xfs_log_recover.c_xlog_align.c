
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
struct xlog {scalar_t__ l_sectBBsize; } ;


 unsigned int BBTOB (int) ;

__attribute__((used)) static inline unsigned int
xlog_align(
 struct xlog *log,
 xfs_daddr_t blk_no)
{
 return BBTOB(blk_no & ((xfs_daddr_t)log->l_sectBBsize - 1));
}
