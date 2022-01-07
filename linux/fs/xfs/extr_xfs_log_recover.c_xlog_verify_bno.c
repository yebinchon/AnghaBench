
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_daddr_t ;
struct xlog {scalar_t__ l_logBBsize; } ;



__attribute__((used)) static inline bool
xlog_verify_bno(
 struct xlog *log,
 xfs_daddr_t blk_no,
 int bbcount)
{
 if (blk_no < 0 || blk_no >= log->l_logBBsize)
  return 0;
 if (bbcount <= 0 || (blk_no + bbcount) > log->l_logBBsize)
  return 0;
 return 1;
}
