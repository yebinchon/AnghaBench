
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_mnt_opts {void* defcontext; void* rootcontext; void* context; void* fscontext; } ;
struct fs_context {struct selinux_mnt_opts* security; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kstrdup (void*,int ) ;
 struct selinux_mnt_opts* kzalloc (int,int ) ;

__attribute__((used)) static int selinux_fs_context_dup(struct fs_context *fc,
      struct fs_context *src_fc)
{
 const struct selinux_mnt_opts *src = src_fc->security;
 struct selinux_mnt_opts *opts;

 if (!src)
  return 0;

 fc->security = kzalloc(sizeof(struct selinux_mnt_opts), GFP_KERNEL);
 if (!fc->security)
  return -ENOMEM;

 opts = fc->security;

 if (src->fscontext) {
  opts->fscontext = kstrdup(src->fscontext, GFP_KERNEL);
  if (!opts->fscontext)
   return -ENOMEM;
 }
 if (src->context) {
  opts->context = kstrdup(src->context, GFP_KERNEL);
  if (!opts->context)
   return -ENOMEM;
 }
 if (src->rootcontext) {
  opts->rootcontext = kstrdup(src->rootcontext, GFP_KERNEL);
  if (!opts->rootcontext)
   return -ENOMEM;
 }
 if (src->defcontext) {
  opts->defcontext = kstrdup(src->defcontext, GFP_KERNEL);
  if (!opts->defcontext)
   return -ENOMEM;
 }
 return 0;
}
