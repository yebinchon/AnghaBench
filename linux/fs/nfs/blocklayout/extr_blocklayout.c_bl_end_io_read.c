
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parallel_io {struct nfs_pgio_header* data; } ;
struct nfs_pgio_header {int lseg; int pnfs_error; } ;
struct bio {scalar_t__ bi_status; struct parallel_io* bi_private; } ;


 int EIO ;
 int bio_put (struct bio*) ;
 int bl_mark_devices_unavailable (struct nfs_pgio_header*,int) ;
 int pnfs_set_lo_fail (int ) ;
 int put_parallel (struct parallel_io*) ;

__attribute__((used)) static void bl_end_io_read(struct bio *bio)
{
 struct parallel_io *par = bio->bi_private;

 if (bio->bi_status) {
  struct nfs_pgio_header *header = par->data;

  if (!header->pnfs_error)
   header->pnfs_error = -EIO;
  pnfs_set_lo_fail(header->lseg);
  bl_mark_devices_unavailable(header, 0);
 }

 bio_put(bio);
 put_parallel(par);
}
