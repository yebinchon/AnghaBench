
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir3_data_hdr {struct xfs_dir2_data_free* best_free; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_dir2_data_free {int dummy; } ;



__attribute__((used)) static struct xfs_dir2_data_free *
xfs_dir3_data_bestfree_p(struct xfs_dir2_data_hdr *hdr)
{
 return ((struct xfs_dir3_data_hdr *)hdr)->best_free;
}
