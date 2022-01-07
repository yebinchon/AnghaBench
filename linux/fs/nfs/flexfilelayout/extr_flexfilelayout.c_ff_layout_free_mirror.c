
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int mirror_ds; int rw_cred; int ro_cred; struct nfs4_ff_layout_mirror* fh_versions; } ;
struct cred {int dummy; } ;


 int ff_layout_remove_mirror (struct nfs4_ff_layout_mirror*) ;
 int kfree (struct nfs4_ff_layout_mirror*) ;
 int nfs4_ff_layout_put_deviceid (int ) ;
 int put_cred (struct cred const*) ;
 struct cred* rcu_access_pointer (int ) ;

__attribute__((used)) static void ff_layout_free_mirror(struct nfs4_ff_layout_mirror *mirror)
{
 const struct cred *cred;

 ff_layout_remove_mirror(mirror);
 kfree(mirror->fh_versions);
 cred = rcu_access_pointer(mirror->ro_cred);
 put_cred(cred);
 cred = rcu_access_pointer(mirror->rw_cred);
 put_cred(cred);
 nfs4_ff_layout_put_deviceid(mirror->mirror_ds);
 kfree(mirror);
}
