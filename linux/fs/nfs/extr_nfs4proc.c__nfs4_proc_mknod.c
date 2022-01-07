
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs4_label {int dummy; } ;
struct TYPE_4__ {void* specdata2; void* specdata1; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {struct nfs4_label* label; TYPE_2__ u; int ftype; } ;
struct nfs4_createdata {TYPE_3__ arg; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; } ;
struct dentry {int d_name; } ;
typedef int dev_t ;


 int EINVAL ;
 int ENOMEM ;
 void* MAJOR (int ) ;
 void* MINOR (int ) ;
 int NF4BLK ;
 int NF4CHR ;
 int NF4FIFO ;
 int NF4SOCK ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 int S_ISSOCK (int) ;
 struct nfs4_createdata* nfs4_alloc_createdata (struct inode*,int *,struct iattr*,int ) ;
 int nfs4_do_create (struct inode*,struct dentry*,struct nfs4_createdata*) ;
 int nfs4_free_createdata (struct nfs4_createdata*) ;

__attribute__((used)) static int _nfs4_proc_mknod(struct inode *dir, struct dentry *dentry,
  struct iattr *sattr, struct nfs4_label *label, dev_t rdev)
{
 struct nfs4_createdata *data;
 int mode = sattr->ia_mode;
 int status = -ENOMEM;

 data = nfs4_alloc_createdata(dir, &dentry->d_name, sattr, NF4SOCK);
 if (data == ((void*)0))
  goto out;

 if (S_ISFIFO(mode))
  data->arg.ftype = NF4FIFO;
 else if (S_ISBLK(mode)) {
  data->arg.ftype = NF4BLK;
  data->arg.u.device.specdata1 = MAJOR(rdev);
  data->arg.u.device.specdata2 = MINOR(rdev);
 }
 else if (S_ISCHR(mode)) {
  data->arg.ftype = NF4CHR;
  data->arg.u.device.specdata1 = MAJOR(rdev);
  data->arg.u.device.specdata2 = MINOR(rdev);
 } else if (!S_ISSOCK(mode)) {
  status = -EINVAL;
  goto out_free;
 }

 data->arg.label = label;
 status = nfs4_do_create(dir, dentry, data);
out_free:
 nfs4_free_createdata(data);
out:
 return status;
}
