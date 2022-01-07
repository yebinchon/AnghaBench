
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int dummy; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;


 struct pnfs_layout_hdr* __bl_alloc_layout_hdr (struct inode*,int ,int) ;

__attribute__((used)) static struct pnfs_layout_hdr *bl_alloc_layout_hdr(struct inode *inode,
         gfp_t gfp_flags)
{
 return __bl_alloc_layout_hdr(inode, gfp_flags, 0);
}
