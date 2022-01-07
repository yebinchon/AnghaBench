
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_daddr_t ;
struct xlog {scalar_t__ l_logBBsize; } ;



__attribute__((used)) static inline int
xlog_tail_distance(
 struct xlog *log,
 xfs_daddr_t head_blk,
 xfs_daddr_t tail_blk)
{
 if (head_blk < tail_blk)
  return tail_blk - head_blk;

 return tail_blk + (log->l_logBBsize - head_blk);
}
