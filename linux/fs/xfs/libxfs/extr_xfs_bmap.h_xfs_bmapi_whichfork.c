
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_ATTR_FORK ;
 int XFS_BMAPI_ATTRFORK ;
 int XFS_BMAPI_COWFORK ;
 int XFS_COW_FORK ;
 int XFS_DATA_FORK ;

__attribute__((used)) static inline int xfs_bmapi_whichfork(int bmapi_flags)
{
 if (bmapi_flags & XFS_BMAPI_COWFORK)
  return XFS_COW_FORK;
 else if (bmapi_flags & XFS_BMAPI_ATTRFORK)
  return XFS_ATTR_FORK;
 return XFS_DATA_FORK;
}
