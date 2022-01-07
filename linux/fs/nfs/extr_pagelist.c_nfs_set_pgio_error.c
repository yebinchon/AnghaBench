
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {unsigned int io_start; unsigned int good_bytes; int error; int flags; } ;
typedef unsigned int loff_t ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

void nfs_set_pgio_error(struct nfs_pgio_header *hdr, int error, loff_t pos)
{
 unsigned int new = pos - hdr->io_start;

 if (hdr->good_bytes > new) {
  hdr->good_bytes = new;
  clear_bit(NFS_IOHDR_EOF, &hdr->flags);
  if (!test_and_set_bit(NFS_IOHDR_ERROR, &hdr->flags))
   hdr->error = error;
 }
}
