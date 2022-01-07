
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int in_grace; int rec_file; } ;


 int mnt_drop_write_file (int ) ;
 int mnt_want_write_file (int ) ;
 int nfs4_release_reclaim (struct nfsd_net*) ;
 int nfsd4_list_rec_dir (int ,struct nfsd_net*) ;
 int printk (char*,int ) ;
 int purge_old ;
 int vfs_fsync (int ,int ) ;

__attribute__((used)) static void
nfsd4_recdir_purge_old(struct nfsd_net *nn)
{
 int status;

 nn->in_grace = 0;
 if (!nn->rec_file)
  return;
 status = mnt_want_write_file(nn->rec_file);
 if (status)
  goto out;
 status = nfsd4_list_rec_dir(purge_old, nn);
 if (status == 0)
  vfs_fsync(nn->rec_file, 0);
 mnt_drop_write_file(nn->rec_file);
out:
 nfs4_release_reclaim(nn);
 if (status)
  printk("nfsd4: failed to purge old clients from recovery"
   " directory %pD\n", nn->rec_file);
}
