
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_info {TYPE_1__* mds; } ;
struct TYPE_2__ {int ncommit; } ;


 unsigned long atomic_long_read (int *) ;

unsigned long
nfs_reqs_to_commit(struct nfs_commit_info *cinfo)
{
 return atomic_long_read(&cinfo->mds->ncommit);
}
