
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fs_context {int global; int user_ns; int * ops; int * fs_type; int * fs_private; } ;
struct cgroup_fs_context {TYPE_2__* ns; int kfc; } ;
struct TYPE_6__ {TYPE_1__* nsproxy; } ;
struct TYPE_5__ {int user_ns; } ;
struct TYPE_4__ {TYPE_2__* cgroup_ns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cgroup1_fs_context_ops ;
 int cgroup2_fs_type ;
 int cgroup_enable_task_cg_lists () ;
 int cgroup_fs_context_ops ;
 TYPE_3__* current ;
 int get_cgroup_ns (TYPE_2__*) ;
 int get_user_ns (int ) ;
 struct cgroup_fs_context* kzalloc (int,int ) ;
 int put_user_ns (int ) ;
 int use_task_css_set_links ;

__attribute__((used)) static int cgroup_init_fs_context(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx;

 ctx = kzalloc(sizeof(struct cgroup_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;





 if (!use_task_css_set_links)
  cgroup_enable_task_cg_lists();

 ctx->ns = current->nsproxy->cgroup_ns;
 get_cgroup_ns(ctx->ns);
 fc->fs_private = &ctx->kfc;
 if (fc->fs_type == &cgroup2_fs_type)
  fc->ops = &cgroup_fs_context_ops;
 else
  fc->ops = &cgroup1_fs_context_ops;
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(ctx->ns->user_ns);
 fc->global = 1;
 return 0;
}
