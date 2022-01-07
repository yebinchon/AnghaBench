
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int dummy; } ;


 scalar_t__ nfsd_file_check_write_error (struct nfsd_file*) ;
 scalar_t__ nfsd_file_check_writeback (struct nfsd_file*) ;

__attribute__((used)) static bool
nfsd_file_in_use(struct nfsd_file *nf)
{
 return nfsd_file_check_writeback(nf) ||
   nfsd_file_check_write_error(nf);
}
