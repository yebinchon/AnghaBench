
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int inode; int cred; } ;
struct nfs_pageio_descriptor {int pg_error; int pg_ioflags; int pg_rpc_callops; int pg_rw_ops; } ;


 int ENOMEM ;
 int NFS_CLIENT (int ) ;
 int NFS_PROTO (int ) ;
 int nfs_generic_pgio (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_initiate_pgio (int ,struct nfs_pgio_header*,int ,int ,int ,int ,int ) ;
 int nfs_pgheader_init (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int ) ;
 struct nfs_pgio_header* nfs_pgio_header_alloc (int ) ;
 int nfs_pgio_header_free ;

__attribute__((used)) static int nfs_generic_pg_pgios(struct nfs_pageio_descriptor *desc)
{
 struct nfs_pgio_header *hdr;
 int ret;

 hdr = nfs_pgio_header_alloc(desc->pg_rw_ops);
 if (!hdr) {
  desc->pg_error = -ENOMEM;
  return desc->pg_error;
 }
 nfs_pgheader_init(desc, hdr, nfs_pgio_header_free);
 ret = nfs_generic_pgio(desc, hdr);
 if (ret == 0)
  ret = nfs_initiate_pgio(NFS_CLIENT(hdr->inode),
     hdr,
     hdr->cred,
     NFS_PROTO(hdr->inode),
     desc->pg_rpc_callops,
     desc->pg_ioflags, 0);
 return ret;
}
