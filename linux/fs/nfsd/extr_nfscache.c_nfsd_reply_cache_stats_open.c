
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_fs_info; } ;


 TYPE_2__* file_inode (struct file*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int nfsd_reply_cache_stats_show ;
 int single_open (struct file*,int ,struct nfsd_net*) ;

int nfsd_reply_cache_stats_open(struct inode *inode, struct file *file)
{
 struct nfsd_net *nn = net_generic(file_inode(file)->i_sb->s_fs_info,
        nfsd_net_id);

 return single_open(file, nfsd_reply_cache_stats_show, nn);
}
