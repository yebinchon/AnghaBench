
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int * nfsd_serv; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int s_fs_info; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_mutex ;
 int nfsd_net_id ;
 int svc_get (int *) ;
 int svc_pool_stats_open (int *,struct file*) ;

int nfsd_pool_stats_open(struct inode *inode, struct file *file)
{
 int ret;
 struct nfsd_net *nn = net_generic(inode->i_sb->s_fs_info, nfsd_net_id);

 mutex_lock(&nfsd_mutex);
 if (nn->nfsd_serv == ((void*)0)) {
  mutex_unlock(&nfsd_mutex);
  return -ENODEV;
 }

 svc_get(nn->nfsd_serv);
 ret = svc_pool_stats_open(nn->nfsd_serv, file);
 mutex_unlock(&nfsd_mutex);
 return ret;
}
