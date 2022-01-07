
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int * ops; struct bpf_mount_opts* fs_private; } ;
struct bpf_mount_opts {int mode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRWXUGO ;
 int bpf_context_ops ;
 struct bpf_mount_opts* kzalloc (int,int ) ;

__attribute__((used)) static int bpf_init_fs_context(struct fs_context *fc)
{
 struct bpf_mount_opts *opts;

 opts = kzalloc(sizeof(struct bpf_mount_opts), GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 opts->mode = S_IRWXUGO;

 fc->fs_private = opts;
 fc->ops = &bpf_context_ops;
 return 0;
}
