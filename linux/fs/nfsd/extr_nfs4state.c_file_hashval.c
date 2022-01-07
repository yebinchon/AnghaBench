
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knfsd_fh {int dummy; } ;


 int FILE_HASH_SIZE ;
 int nfsd_fh_hashval (struct knfsd_fh*) ;

__attribute__((used)) static unsigned int file_hashval(struct knfsd_fh *fh)
{
 return nfsd_fh_hashval(fh) & (FILE_HASH_SIZE - 1);
}
