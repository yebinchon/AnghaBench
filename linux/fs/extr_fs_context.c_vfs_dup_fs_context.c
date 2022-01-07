
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fs_context {TYPE_2__* ops; TYPE_1__* log; int cred; int user_ns; int net_ns; int fs_type; int * security; int * source; int * s_fs_info; int * fs_private; int uapi_mutex; } ;
struct TYPE_4__ {int (* dup ) (struct fs_context*,struct fs_context*) ;} ;
struct TYPE_3__ {int usage; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct fs_context* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int get_cred (int ) ;
 int get_filesystem (int ) ;
 int get_net (int ) ;
 int get_user_ns (int ) ;
 struct fs_context* kmemdup (struct fs_context*,int,int ) ;
 int mutex_init (int *) ;
 int put_fs_context (struct fs_context*) ;
 int refcount_inc (int *) ;
 int security_fs_context_dup (struct fs_context*,struct fs_context*) ;
 int stub1 (struct fs_context*,struct fs_context*) ;

struct fs_context *vfs_dup_fs_context(struct fs_context *src_fc)
{
 struct fs_context *fc;
 int ret;

 if (!src_fc->ops->dup)
  return ERR_PTR(-EOPNOTSUPP);

 fc = kmemdup(src_fc, sizeof(struct fs_context), GFP_KERNEL);
 if (!fc)
  return ERR_PTR(-ENOMEM);

 mutex_init(&fc->uapi_mutex);

 fc->fs_private = ((void*)0);
 fc->s_fs_info = ((void*)0);
 fc->source = ((void*)0);
 fc->security = ((void*)0);
 get_filesystem(fc->fs_type);
 get_net(fc->net_ns);
 get_user_ns(fc->user_ns);
 get_cred(fc->cred);
 if (fc->log)
  refcount_inc(&fc->log->usage);


 ret = fc->ops->dup(fc, src_fc);
 if (ret < 0)
  goto err_fc;

 ret = security_fs_context_dup(fc, src_fc);
 if (ret < 0)
  goto err_fc;
 return fc;

err_fc:
 put_fs_context(fc);
 return ERR_PTR(ret);
}
