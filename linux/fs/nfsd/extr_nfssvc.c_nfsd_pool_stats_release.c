
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct net* s_fs_info; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_destroy (struct net*) ;
 int nfsd_mutex ;
 int seq_release (struct inode*,struct file*) ;

int nfsd_pool_stats_release(struct inode *inode, struct file *file)
{
 int ret = seq_release(inode, file);
 struct net *net = inode->i_sb->s_fs_info;

 mutex_lock(&nfsd_mutex);

 nfsd_destroy(net);
 mutex_unlock(&nfsd_mutex);
 return ret;
}
