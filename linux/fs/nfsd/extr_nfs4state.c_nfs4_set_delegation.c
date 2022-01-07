
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct nfs4_file {int fi_delegees; struct nfsd_file* fi_deleg_file; int fi_lock; scalar_t__ fi_had_conflict; } ;
struct nfs4_delegation {int dl_stid; int dl_clnt_odstate; } ;
struct nfs4_clnt_odstate {int dummy; } ;
struct nfs4_client {int dummy; } ;
struct file_lock {int fl_type; } ;


 int EAGAIN ;
 int EBADF ;
 int ENOMEM ;
 struct nfs4_delegation* ERR_PTR (int) ;
 int F_UNLCK ;
 int NFS4_OPEN_DELEGATE_READ ;
 int WARN_ON_ONCE (int) ;
 struct nfs4_delegation* alloc_init_deleg (struct nfs4_client*,struct nfs4_file*,struct svc_fh*,struct nfs4_clnt_odstate*) ;
 struct nfsd_file* find_readable_file (struct nfs4_file*) ;
 int hash_delegation_locked (struct nfs4_delegation*,struct nfs4_file*) ;
 int locks_free_lock (struct file_lock*) ;
 struct file_lock* nfs4_alloc_init_lease (struct nfs4_delegation*,int ) ;
 scalar_t__ nfs4_delegation_exists (struct nfs4_client*,struct nfs4_file*) ;
 int nfs4_put_stid (int *) ;
 int nfsd_file_put (struct nfsd_file*) ;
 int put_clnt_odstate (int ) ;
 int put_deleg_file (struct nfs4_file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int state_lock ;
 int vfs_setlease (int ,int ,struct file_lock**,void**) ;

__attribute__((used)) static struct nfs4_delegation *
nfs4_set_delegation(struct nfs4_client *clp, struct svc_fh *fh,
      struct nfs4_file *fp, struct nfs4_clnt_odstate *odstate)
{
 int status = 0;
 struct nfs4_delegation *dp;
 struct nfsd_file *nf;
 struct file_lock *fl;






 if (fp->fi_had_conflict)
  return ERR_PTR(-EAGAIN);

 nf = find_readable_file(fp);
 if (!nf) {

  WARN_ON_ONCE(1);
  return ERR_PTR(-EBADF);
 }
 spin_lock(&state_lock);
 spin_lock(&fp->fi_lock);
 if (nfs4_delegation_exists(clp, fp))
  status = -EAGAIN;
 else if (!fp->fi_deleg_file) {
  fp->fi_deleg_file = nf;


  fp->fi_delegees = 1;
  nf = ((void*)0);
 } else
  fp->fi_delegees++;
 spin_unlock(&fp->fi_lock);
 spin_unlock(&state_lock);
 if (nf)
  nfsd_file_put(nf);
 if (status)
  return ERR_PTR(status);

 status = -ENOMEM;
 dp = alloc_init_deleg(clp, fp, fh, odstate);
 if (!dp)
  goto out_delegees;

 fl = nfs4_alloc_init_lease(dp, NFS4_OPEN_DELEGATE_READ);
 if (!fl)
  goto out_clnt_odstate;

 status = vfs_setlease(fp->fi_deleg_file->nf_file, fl->fl_type, &fl, ((void*)0));
 if (fl)
  locks_free_lock(fl);
 if (status)
  goto out_clnt_odstate;

 spin_lock(&state_lock);
 spin_lock(&fp->fi_lock);
 if (fp->fi_had_conflict)
  status = -EAGAIN;
 else
  status = hash_delegation_locked(dp, fp);
 spin_unlock(&fp->fi_lock);
 spin_unlock(&state_lock);

 if (status)
  goto out_unlock;

 return dp;
out_unlock:
 vfs_setlease(fp->fi_deleg_file->nf_file, F_UNLCK, ((void*)0), (void **)&dp);
out_clnt_odstate:
 put_clnt_odstate(dp->dl_clnt_odstate);
 nfs4_put_stid(&dp->dl_stid);
out_delegees:
 put_deleg_file(fp);
 return ERR_PTR(status);
}
