
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_DATA_FORK ;
 int XFS_ILOG_ABROOT ;
 int XFS_ILOG_DBROOT ;

__attribute__((used)) static inline int xfs_ilog_fbroot(int w)
{
 return (w == XFS_DATA_FORK ? XFS_ILOG_DBROOT : XFS_ILOG_ABROOT);
}
