
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {scalar_t__ error; int flags; } ;
struct nfs_direct_req {scalar_t__ max_count; scalar_t__ count; scalar_t__ error; } ;
typedef scalar_t__ ssize_t ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
nfs_direct_handle_truncated(struct nfs_direct_req *dreq,
       const struct nfs_pgio_header *hdr,
       ssize_t dreq_len)
{
 if (!(test_bit(NFS_IOHDR_ERROR, &hdr->flags) ||
       test_bit(NFS_IOHDR_EOF, &hdr->flags)))
  return;
 if (dreq->max_count >= dreq_len) {
  dreq->max_count = dreq_len;
  if (dreq->count > dreq_len)
   dreq->count = dreq_len;

  if (test_bit(NFS_IOHDR_ERROR, &hdr->flags))
   dreq->error = hdr->error;
  else
   dreq->error = 0;
 }
}
