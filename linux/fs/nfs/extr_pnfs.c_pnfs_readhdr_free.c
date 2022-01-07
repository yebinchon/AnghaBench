
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int lseg; } ;


 int nfs_pgio_header_free (struct nfs_pgio_header*) ;
 int pnfs_put_lseg (int ) ;

__attribute__((used)) static void pnfs_readhdr_free(struct nfs_pgio_header *hdr)
{
 pnfs_put_lseg(hdr->lseg);
 nfs_pgio_header_free(hdr);
}
