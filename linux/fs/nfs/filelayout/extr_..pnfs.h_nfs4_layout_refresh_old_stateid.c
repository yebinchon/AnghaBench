
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_range {int dummy; } ;
struct inode {int dummy; } ;
typedef int nfs4_stateid ;



__attribute__((used)) static inline bool nfs4_layout_refresh_old_stateid(nfs4_stateid *dst,
  struct pnfs_layout_range *dst_range,
  struct inode *inode)
{
 return 0;
}
