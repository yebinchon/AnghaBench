
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_file {int nf_file; } ;
struct nfs4_file {int fi_delegees; struct nfsd_file* fi_deleg_file; } ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_delegation {TYPE_1__ dl_stid; } ;


 int F_UNLCK ;
 int WARN_ON_ONCE (int) ;
 int put_deleg_file (struct nfs4_file*) ;
 int vfs_setlease (int ,int ,int *,void**) ;

__attribute__((used)) static void nfs4_unlock_deleg_lease(struct nfs4_delegation *dp)
{
 struct nfs4_file *fp = dp->dl_stid.sc_file;
 struct nfsd_file *nf = fp->fi_deleg_file;

 WARN_ON_ONCE(!fp->fi_delegees);

 vfs_setlease(nf->nf_file, F_UNLCK, ((void*)0), (void **)&dp);
 put_deleg_file(fp);
}
