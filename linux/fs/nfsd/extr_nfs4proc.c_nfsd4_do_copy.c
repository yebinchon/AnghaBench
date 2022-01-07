
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wr_bytes_written; } ;
struct nfsd4_copy {int nf_dst; int nf_src; TYPE_1__ cp_res; } ;
typedef scalar_t__ ssize_t ;
typedef int __be32 ;


 scalar_t__ _nfsd_copy_file_range (struct nfsd4_copy*) ;
 int nfs_ok ;
 int nfsd4_init_copy_res (struct nfsd4_copy*,int) ;
 int nfsd_file_put (int ) ;
 int nfserrno (scalar_t__) ;

__attribute__((used)) static __be32 nfsd4_do_copy(struct nfsd4_copy *copy, bool sync)
{
 __be32 status;
 ssize_t bytes;

 bytes = _nfsd_copy_file_range(copy);



 if (bytes < 0 && !copy->cp_res.wr_bytes_written)
  status = nfserrno(bytes);
 else {
  nfsd4_init_copy_res(copy, sync);
  status = nfs_ok;
 }

 nfsd_file_put(copy->nf_src);
 nfsd_file_put(copy->nf_dst);
 return status;
}
