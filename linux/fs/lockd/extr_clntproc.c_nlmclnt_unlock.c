
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_res {scalar_t__ status; } ;
struct nlm_rqst {int a_count; struct nlm_res a_res; struct nlm_host* a_host; } ;
struct nlm_host {int h_rwsem; } ;
struct file_lock {unsigned char fl_flags; int fl_file; } ;


 int ENOENT ;
 int ENOLCK ;
 unsigned char FL_EXISTS ;
 int NLMPROC_UNLOCK ;
 int do_vfs_lock (struct file_lock*) ;
 int down_read (int *) ;
 int nfs_file_cred (int ) ;
 scalar_t__ nlm_granted ;
 scalar_t__ nlm_lck_denied_nolocks ;
 int nlmclnt_async_call (int ,struct nlm_rqst*,int ,int *) ;
 int nlmclnt_release_call (struct nlm_rqst*) ;
 int nlmclnt_unlock_ops ;
 int ntohl (scalar_t__) ;
 int printk (char*,int ) ;
 int refcount_inc (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int
nlmclnt_unlock(struct nlm_rqst *req, struct file_lock *fl)
{
 struct nlm_host *host = req->a_host;
 struct nlm_res *resp = &req->a_res;
 int status;
 unsigned char fl_flags = fl->fl_flags;






 fl->fl_flags |= FL_EXISTS;
 down_read(&host->h_rwsem);
 status = do_vfs_lock(fl);
 up_read(&host->h_rwsem);
 fl->fl_flags = fl_flags;
 if (status == -ENOENT) {
  status = 0;
  goto out;
 }

 refcount_inc(&req->a_count);
 status = nlmclnt_async_call(nfs_file_cred(fl->fl_file), req,
   NLMPROC_UNLOCK, &nlmclnt_unlock_ops);
 if (status < 0)
  goto out;

 if (resp->status == nlm_granted)
  goto out;

 if (resp->status != nlm_lck_denied_nolocks)
  printk("lockd: unexpected unlock status: %d\n",
   ntohl(resp->status));

 status = -ENOLCK;
out:
 nlmclnt_release_call(req);
 return status;
}
