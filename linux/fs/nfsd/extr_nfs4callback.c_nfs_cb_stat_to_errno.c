
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat; int errno; } ;


 int dprintk (char*,int) ;
 TYPE_1__* nfs_cb_errtbl ;

__attribute__((used)) static int nfs_cb_stat_to_errno(int status)
{
 int i;

 for (i = 0; nfs_cb_errtbl[i].stat != -1; i++) {
  if (nfs_cb_errtbl[i].stat == status)
   return nfs_cb_errtbl[i].errno;
 }

 dprintk("NFSD: Unrecognized NFS CB status value: %u\n", status);
 return -status;
}
