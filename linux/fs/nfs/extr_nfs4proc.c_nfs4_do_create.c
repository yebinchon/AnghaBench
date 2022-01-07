
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int label; TYPE_3__* fattr; int fh; int dir_cinfo; int seq_res; } ;
struct TYPE_6__ {scalar_t__ ftype; int seq_args; } ;
struct nfs4_createdata {TYPE_2__ res; TYPE_1__ arg; int msg; } ;
struct inode {int i_lock; } ;
struct dentry {int dummy; } ;
struct TYPE_9__ {int client; } ;
struct TYPE_8__ {int time_start; } ;


 scalar_t__ NF4DIR ;
 TYPE_4__* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,TYPE_4__*,int *,int *,int *,int) ;
 int nfs4_inc_nlink_locked (struct inode*) ;
 int nfs_instantiate (struct dentry*,int ,TYPE_3__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_changeattr_locked (struct inode*,int *,int ,int ) ;

__attribute__((used)) static int nfs4_do_create(struct inode *dir, struct dentry *dentry, struct nfs4_createdata *data)
{
 int status = nfs4_call_sync(NFS_SERVER(dir)->client, NFS_SERVER(dir), &data->msg,
        &data->arg.seq_args, &data->res.seq_res, 1);
 if (status == 0) {
  spin_lock(&dir->i_lock);
  update_changeattr_locked(dir, &data->res.dir_cinfo,
    data->res.fattr->time_start, 0);

  if (data->arg.ftype == NF4DIR)
   nfs4_inc_nlink_locked(dir);
  spin_unlock(&dir->i_lock);
  status = nfs_instantiate(dentry, data->res.fh, data->res.fattr, data->res.label);
 }
 return status;
}
