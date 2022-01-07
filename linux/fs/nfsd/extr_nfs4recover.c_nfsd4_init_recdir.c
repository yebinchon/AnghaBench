
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int in_grace; int * rec_file; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 int BUG_ON (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int PTR_ERR (int *) ;
 int * filp_open (int,int,int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_reset_creds (struct cred const*) ;
 int nfs4_save_creds (struct cred const**) ;
 int nfsd_net_id ;
 int printk (char*,int) ;
 int user_recovery_dirname ;

__attribute__((used)) static int
nfsd4_init_recdir(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 const struct cred *original_cred;
 int status;

 printk("NFSD: Using %s as the NFSv4 state recovery directory\n",
   user_recovery_dirname);

 BUG_ON(nn->rec_file);

 status = nfs4_save_creds(&original_cred);
 if (status < 0) {
  printk("NFSD: Unable to change credentials to find recovery"
         " directory: error %d\n",
         status);
  return status;
 }

 nn->rec_file = filp_open(user_recovery_dirname, O_RDONLY | O_DIRECTORY, 0);
 if (IS_ERR(nn->rec_file)) {
  printk("NFSD: unable to find recovery directory %s\n",
    user_recovery_dirname);
  status = PTR_ERR(nn->rec_file);
  nn->rec_file = ((void*)0);
 }

 nfs4_reset_creds(original_cred);
 if (!status)
  nn->in_grace = 1;
 return status;
}
