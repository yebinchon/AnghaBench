
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int rec_file; scalar_t__ in_grace; } ;
struct nfs4_client {int cl_flags; int cl_name; int net; } ;
struct cred {int dummy; } ;


 int HEXDIR_LEN ;
 int NFSD4_CLIENT_STABLE ;
 int __nfsd4_remove_reclaim_record_grace (char*,int,struct nfsd_net*) ;
 int clear_bit (int ,int *) ;
 void legacy_recdir_name_error (struct nfs4_client*,int) ;
 int mnt_drop_write_file (int ) ;
 int mnt_want_write_file (int ) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfs4_make_rec_clidname (char*,int *) ;
 int nfs4_reset_creds (struct cred const*) ;
 int nfs4_save_creds (struct cred const**) ;
 int nfsd4_unlink_clid_dir (char*,int,struct nfsd_net*) ;
 int nfsd_net_id ;
 int printk (char*,int,char*) ;
 int test_bit (int ,int *) ;
 int vfs_fsync (int ,int ) ;

__attribute__((used)) static void
nfsd4_remove_clid_dir(struct nfs4_client *clp)
{
 const struct cred *original_cred;
 char dname[HEXDIR_LEN];
 int status;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 if (!nn->rec_file || !test_bit(NFSD4_CLIENT_STABLE, &clp->cl_flags))
  return;

 status = nfs4_make_rec_clidname(dname, &clp->cl_name);
 if (status)
  return legacy_recdir_name_error(clp, status);

 status = mnt_want_write_file(nn->rec_file);
 if (status)
  goto out;
 clear_bit(NFSD4_CLIENT_STABLE, &clp->cl_flags);

 status = nfs4_save_creds(&original_cred);
 if (status < 0)
  goto out_drop_write;

 status = nfsd4_unlink_clid_dir(dname, HEXDIR_LEN-1, nn);
 nfs4_reset_creds(original_cred);
 if (status == 0) {
  vfs_fsync(nn->rec_file, 0);
  if (nn->in_grace)
   __nfsd4_remove_reclaim_record_grace(dname,
     HEXDIR_LEN, nn);
 }
out_drop_write:
 mnt_drop_write_file(nn->rec_file);
out:
 if (status)
  printk("NFSD: Failed to remove expired client state directory"
    " %.*s\n", HEXDIR_LEN, dname);
}
