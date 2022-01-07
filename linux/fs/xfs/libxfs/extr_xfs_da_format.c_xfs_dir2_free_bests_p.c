
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_free_hdr {int dummy; } ;
struct xfs_dir2_free {int dummy; } ;
typedef int __be16 ;



__attribute__((used)) static __be16 *
xfs_dir2_free_bests_p(struct xfs_dir2_free *free)
{
 return (__be16 *)((char *)free + sizeof(struct xfs_dir2_free_hdr));
}
