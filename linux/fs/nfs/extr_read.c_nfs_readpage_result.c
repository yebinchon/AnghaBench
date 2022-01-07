
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_3__ {unsigned int offset; scalar_t__ count; } ;
struct TYPE_4__ {unsigned int count; scalar_t__ eof; } ;
struct nfs_pgio_header {unsigned int io_start; unsigned int good_bytes; TYPE_1__ args; TYPE_2__ res; int flags; } ;
typedef unsigned int loff_t ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int clear_bit (int ,int *) ;
 int nfs_readpage_retry (struct rpc_task*,struct nfs_pgio_header*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_readpage_result(struct rpc_task *task,
    struct nfs_pgio_header *hdr)
{
 if (hdr->res.eof) {
  loff_t pos = hdr->args.offset + hdr->res.count;
  unsigned int new = pos - hdr->io_start;

  if (hdr->good_bytes > new) {
   hdr->good_bytes = new;
   set_bit(NFS_IOHDR_EOF, &hdr->flags);
   clear_bit(NFS_IOHDR_ERROR, &hdr->flags);
  }
 } else if (hdr->res.count < hdr->args.count)
  nfs_readpage_retry(task, hdr);
}
