
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fs_context {int purpose; unsigned int sb_flags; unsigned int sb_flags_mask; int need_free; TYPE_3__* fs_type; int root; void* user_ns; TYPE_4__* cred; int uapi_mutex; int net_ns; } ;
struct file_system_type {int dummy; } ;
struct dentry {TYPE_2__* d_sb; } ;
typedef enum fs_context_purpose { ____Placeholder_fs_context_purpose } fs_context_purpose ;
struct TYPE_10__ {TYPE_1__* nsproxy; } ;
struct TYPE_9__ {int user_ns; } ;
struct TYPE_8__ {int (* init_fs_context ) (struct fs_context*) ;} ;
struct TYPE_7__ {int s_user_ns; int s_active; } ;
struct TYPE_6__ {int net_ns; } ;


 int ENOMEM ;
 struct fs_context* ERR_PTR (int) ;



 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 TYPE_5__* current ;
 int dget (struct dentry*) ;
 TYPE_4__* get_current_cred () ;
 TYPE_3__* get_filesystem (struct file_system_type*) ;
 int get_net (int ) ;
 void* get_user_ns (int ) ;
 struct fs_context* kzalloc (int,int ) ;
 int legacy_init_fs_context (struct fs_context*) ;
 int mutex_init (int *) ;
 int put_fs_context (struct fs_context*) ;

__attribute__((used)) static struct fs_context *alloc_fs_context(struct file_system_type *fs_type,
          struct dentry *reference,
          unsigned int sb_flags,
          unsigned int sb_flags_mask,
          enum fs_context_purpose purpose)
{
 int (*init_fs_context)(struct fs_context *);
 struct fs_context *fc;
 int ret = -ENOMEM;

 fc = kzalloc(sizeof(struct fs_context), GFP_KERNEL);
 if (!fc)
  return ERR_PTR(-ENOMEM);

 fc->purpose = purpose;
 fc->sb_flags = sb_flags;
 fc->sb_flags_mask = sb_flags_mask;
 fc->fs_type = get_filesystem(fs_type);
 fc->cred = get_current_cred();
 fc->net_ns = get_net(current->nsproxy->net_ns);

 mutex_init(&fc->uapi_mutex);

 switch (purpose) {
 case 130:
  fc->user_ns = get_user_ns(fc->cred->user_ns);
  break;
 case 128:
  fc->user_ns = get_user_ns(reference->d_sb->s_user_ns);
  break;
 case 129:
  atomic_inc(&reference->d_sb->s_active);
  fc->user_ns = get_user_ns(reference->d_sb->s_user_ns);
  fc->root = dget(reference);
  break;
 }


 init_fs_context = fc->fs_type->init_fs_context;
 if (!init_fs_context)
  init_fs_context = legacy_init_fs_context;

 ret = init_fs_context(fc);
 if (ret < 0)
  goto err_fc;
 fc->need_free = 1;
 return fc;

err_fc:
 put_fs_context(fc);
 return ERR_PTR(ret);
}
