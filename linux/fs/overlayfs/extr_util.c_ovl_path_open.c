
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct file {int dummy; } ;


 int O_NOATIME ;
 int current_cred () ;
 struct file* dentry_open (struct path*,int,int ) ;

struct file *ovl_path_open(struct path *path, int flags)
{
 return dentry_open(path, flags | O_NOATIME, current_cred());
}
