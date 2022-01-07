
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int wr_bytes_written; } ;
struct nfsd4_copy {size_t cp_count; TYPE_3__ cp_res; TYPE_2__* nf_dst; TYPE_1__* nf_src; int cp_synchronous; int cp_dst_pos; int cp_src_pos; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int nf_file; } ;
struct TYPE_4__ {int nf_file; } ;


 scalar_t__ kthread_should_stop () ;
 scalar_t__ nfsd_copy_file_range (int ,int ,int ,int ,size_t) ;

__attribute__((used)) static ssize_t _nfsd_copy_file_range(struct nfsd4_copy *copy)
{
 ssize_t bytes_copied = 0;
 size_t bytes_total = copy->cp_count;
 u64 src_pos = copy->cp_src_pos;
 u64 dst_pos = copy->cp_dst_pos;

 do {
  if (kthread_should_stop())
   break;
  bytes_copied = nfsd_copy_file_range(copy->nf_src->nf_file,
    src_pos, copy->nf_dst->nf_file, dst_pos,
    bytes_total);
  if (bytes_copied <= 0)
   break;
  bytes_total -= bytes_copied;
  copy->cp_res.wr_bytes_written += bytes_copied;
  src_pos += bytes_copied;
  dst_pos += bytes_copied;
 } while (bytes_total > 0 && !copy->cp_synchronous);
 return bytes_copied;
}
