
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umh_info {char* cmdline; } ;
struct subprocess_info {char* path; int (* init ) (struct subprocess_info*,struct cred*) ;void (* cleanup ) (struct subprocess_info*) ;void* data; struct file* file; int work; int argv; } ;
struct file {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int argv_split (int ,char const*,int *) ;
 int call_usermodehelper_exec_work ;
 int kfree (struct subprocess_info*) ;
 struct subprocess_info* kzalloc (int,int ) ;

struct subprocess_info *call_usermodehelper_setup_file(struct file *file,
  int (*init)(struct subprocess_info *info, struct cred *new),
  void (*cleanup)(struct subprocess_info *info), void *data)
{
 struct subprocess_info *sub_info;
 struct umh_info *info = data;
 const char *cmdline = (info->cmdline) ? info->cmdline : "usermodehelper";

 sub_info = kzalloc(sizeof(struct subprocess_info), GFP_KERNEL);
 if (!sub_info)
  return ((void*)0);

 sub_info->argv = argv_split(GFP_KERNEL, cmdline, ((void*)0));
 if (!sub_info->argv) {
  kfree(sub_info);
  return ((void*)0);
 }

 INIT_WORK(&sub_info->work, call_usermodehelper_exec_work);
 sub_info->path = "none";
 sub_info->file = file;
 sub_info->init = init;
 sub_info->cleanup = cleanup;
 sub_info->data = data;
 return sub_info;
}
