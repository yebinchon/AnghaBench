
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_data_hdr {struct xfs_dir2_data_free* bestfree; } ;
struct xfs_dir2_data_free {int dummy; } ;



__attribute__((used)) static struct xfs_dir2_data_free *
xfs_dir2_data_bestfree_p(struct xfs_dir2_data_hdr *hdr)
{
 return hdr->bestfree;
}
