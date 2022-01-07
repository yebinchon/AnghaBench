
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;


 int XFS_REFCOUNT_ITEM_OVERHEAD ;

__attribute__((used)) static inline xfs_fileoff_t xfs_refcount_max_unmap(int log_res)
{
 return (log_res * 3 / 4) / XFS_REFCOUNT_ITEM_OVERHEAD;
}
