
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * fattr; TYPE_3__* fh; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {struct iattr* sattr; int len; int name; int fh; } ;
struct nfs_createdata {int fattr; TYPE_4__ res; TYPE_3__ fhandle; TYPE_2__ arg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_5__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int GFP_KERNEL ;
 int NFS_FH (struct inode*) ;
 struct nfs_createdata* kmalloc (int,int ) ;
 int nfs_fattr_init (int *) ;

__attribute__((used)) static struct nfs_createdata *nfs_alloc_createdata(struct inode *dir,
  struct dentry *dentry, struct iattr *sattr)
{
 struct nfs_createdata *data;

 data = kmalloc(sizeof(*data), GFP_KERNEL);

 if (data != ((void*)0)) {
  data->arg.fh = NFS_FH(dir);
  data->arg.name = dentry->d_name.name;
  data->arg.len = dentry->d_name.len;
  data->arg.sattr = sattr;
  nfs_fattr_init(&data->fattr);
  data->fhandle.size = 0;
  data->res.fh = &data->fhandle;
  data->res.fattr = &data->fattr;
 }
 return data;
}
