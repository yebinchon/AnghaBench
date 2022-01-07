
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int * mnt; int * dentry; } ;
struct fs_parameter {int type; int key; int dirfd; struct filename* name; int string; } ;
struct fs_context {int dummy; } ;
struct filename {int name; int refcnt; } ;
struct TYPE_2__ {int i_mode; } ;


 int ENOTBLK ;
 int IS_ERR (struct filename*) ;
 unsigned int LOOKUP_EMPTY ;
 int PTR_ERR (struct filename*) ;
 int S_ISBLK (int ) ;
 TYPE_1__* d_backing_inode (int *) ;
 int errorf (struct fs_context*,char*,int ,int ) ;
 int filename_lookup (int ,struct filename*,unsigned int,struct path*,int *) ;



 struct filename* getname_kernel (int ) ;
 int invalf (struct fs_context*,char*,int ) ;
 int path_put (struct path*) ;
 int putname (struct filename*) ;

int fs_lookup_param(struct fs_context *fc,
      struct fs_parameter *param,
      bool want_bdev,
      struct path *_path)
{
 struct filename *f;
 unsigned int flags = 0;
 bool put_f;
 int ret;

 switch (param->type) {
 case 128:
  f = getname_kernel(param->string);
  if (IS_ERR(f))
   return PTR_ERR(f);
  put_f = 1;
  break;
 case 129:
  flags = LOOKUP_EMPTY;

 case 130:
  f = param->name;
  put_f = 0;
  break;
 default:
  return invalf(fc, "%s: not usable as path", param->key);
 }

 f->refcnt++;
 ret = filename_lookup(param->dirfd, f, flags, _path, ((void*)0));
 if (ret < 0) {
  errorf(fc, "%s: Lookup failure for '%s'", param->key, f->name);
  goto out;
 }

 if (want_bdev &&
     !S_ISBLK(d_backing_inode(_path->dentry)->i_mode)) {
  path_put(_path);
  _path->dentry = ((void*)0);
  _path->mnt = ((void*)0);
  errorf(fc, "%s: Non-blockdev passed as '%s'",
         param->key, f->name);
  ret = -ENOTBLK;
 }

out:
 if (put_f)
  putname(f);
 return ret;
}
