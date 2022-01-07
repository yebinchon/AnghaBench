
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int lseg; } ;
struct nfs_pageio_descriptor {int pg_error; int pg_ioflags; int pg_lseg; int pg_rw_ops; } ;


 int ENOMEM ;
 int nfs_generic_pgio (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_pgheader_init (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int ) ;
 struct nfs_pgio_header* nfs_pgio_header_alloc (int ) ;
 int pnfs_do_write (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int ) ;
 int pnfs_get_lseg (int ) ;
 int pnfs_writehdr_free ;

int
pnfs_generic_pg_writepages(struct nfs_pageio_descriptor *desc)
{
 struct nfs_pgio_header *hdr;
 int ret;

 hdr = nfs_pgio_header_alloc(desc->pg_rw_ops);
 if (!hdr) {
  desc->pg_error = -ENOMEM;
  return desc->pg_error;
 }
 nfs_pgheader_init(desc, hdr, pnfs_writehdr_free);

 hdr->lseg = pnfs_get_lseg(desc->pg_lseg);
 ret = nfs_generic_pgio(desc, hdr);
 if (!ret)
  pnfs_do_write(desc, hdr, desc->pg_ioflags);

 return ret;
}
