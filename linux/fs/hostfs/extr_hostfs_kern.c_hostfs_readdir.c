
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dir_context {unsigned long long pos; } ;


 int ENOMEM ;
 int __putname (char*) ;
 int close_dir (void*) ;
 char* dentry_name (int ) ;
 int dir_emit (struct dir_context*,char*,int,unsigned long long,unsigned int) ;
 void* open_dir (char*,int*) ;
 char* read_dir (void*,unsigned long long*,unsigned long long*,int*,unsigned int*) ;
 int seek_dir (void*,unsigned long long) ;

__attribute__((used)) static int hostfs_readdir(struct file *file, struct dir_context *ctx)
{
 void *dir;
 char *name;
 unsigned long long next, ino;
 int error, len;
 unsigned int type;

 name = dentry_name(file->f_path.dentry);
 if (name == ((void*)0))
  return -ENOMEM;
 dir = open_dir(name, &error);
 __putname(name);
 if (dir == ((void*)0))
  return -error;
 next = ctx->pos;
 seek_dir(dir, next);
 while ((name = read_dir(dir, &next, &ino, &len, &type)) != ((void*)0)) {
  if (!dir_emit(ctx, name, len, ino, type))
   break;
  ctx->pos = next;
 }
 close_dir(dir);
 return 0;
}
