
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_ATTR_FORK ;
 int XFS_BMAPI_ATTRFORK ;
 int XFS_BMAPI_COWFORK ;
 int XFS_COW_FORK ;

__attribute__((used)) static inline int xfs_bmapi_aflag(int w)
{
 return (w == XFS_ATTR_FORK ? XFS_BMAPI_ATTRFORK :
        (w == XFS_COW_FORK ? XFS_BMAPI_COWFORK : 0));
}
