
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_ALLOC_NOBUSY ;

__attribute__((used)) static inline bool
xfs_alloc_allow_busy_reuse(int datatype)
{
 return (datatype & XFS_ALLOC_NOBUSY) == 0;
}
