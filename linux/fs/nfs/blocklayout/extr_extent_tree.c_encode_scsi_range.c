
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_extent {int be_f_offset; int be_length; } ;
typedef int __be32 ;


 int SECTOR_SHIFT ;
 int * xdr_encode_hyper (int *,int) ;

__attribute__((used)) static __be32 *encode_scsi_range(struct pnfs_block_extent *be, __be32 *p)
{
 p = xdr_encode_hyper(p, be->be_f_offset << SECTOR_SHIFT);
 return xdr_encode_hyper(p, be->be_length << SECTOR_SHIFT);
}
