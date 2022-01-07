
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat; int errno; } ;


 int EREMOTEIO ;
 TYPE_1__* nfs_errtbl ;

__attribute__((used)) static int
nfs4_stat_to_errno(int stat)
{
 int i;
 for (i = 0; nfs_errtbl[i].stat != -1; i++) {
  if (nfs_errtbl[i].stat == stat)
   return nfs_errtbl[i].errno;
 }
 if (stat <= 10000 || stat > 10100) {

  return -EREMOTEIO;
 }





 return -stat;
}
