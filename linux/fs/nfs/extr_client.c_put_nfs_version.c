
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_subversion {int owner; } ;


 int module_put (int ) ;

void put_nfs_version(struct nfs_subversion *nfs)
{
 module_put(nfs->owner);
}
