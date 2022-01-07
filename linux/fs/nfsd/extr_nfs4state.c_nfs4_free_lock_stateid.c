
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_file {int nf_file; } ;
struct nfs4_stid {int dummy; } ;
struct TYPE_2__ {int sc_file; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; int st_stateowner; } ;
struct nfs4_lockowner {int dummy; } ;
typedef int fl_owner_t ;


 int filp_close (int ,int ) ;
 struct nfsd_file* find_any_file (int ) ;
 int get_file (int ) ;
 struct nfs4_lockowner* lockowner (int ) ;
 int nfs4_free_ol_stateid (struct nfs4_stid*) ;
 int nfsd_file_put (struct nfsd_file*) ;
 struct nfs4_ol_stateid* openlockstateid (struct nfs4_stid*) ;

__attribute__((used)) static void nfs4_free_lock_stateid(struct nfs4_stid *stid)
{
 struct nfs4_ol_stateid *stp = openlockstateid(stid);
 struct nfs4_lockowner *lo = lockowner(stp->st_stateowner);
 struct nfsd_file *nf;

 nf = find_any_file(stp->st_stid.sc_file);
 if (nf) {
  get_file(nf->nf_file);
  filp_close(nf->nf_file, (fl_owner_t)lo);
  nfsd_file_put(nf);
 }
 nfs4_free_ol_stateid(stid);
}
