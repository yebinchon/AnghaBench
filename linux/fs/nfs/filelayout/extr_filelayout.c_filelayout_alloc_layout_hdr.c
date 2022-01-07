
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int dummy; } ;
struct nfs4_filelayout {struct pnfs_layout_hdr generic_hdr; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;


 struct nfs4_filelayout* kzalloc (int,int ) ;

__attribute__((used)) static struct pnfs_layout_hdr *
filelayout_alloc_layout_hdr(struct inode *inode, gfp_t gfp_flags)
{
 struct nfs4_filelayout *flo;

 flo = kzalloc(sizeof(*flo), gfp_flags);
 return flo != ((void*)0) ? &flo->generic_hdr : ((void*)0);
}
