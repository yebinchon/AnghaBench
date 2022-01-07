
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int * dentry; int * mnt; } ;
struct nameidata {struct path path; } ;


 int follow_mount (struct path*) ;
 int link_path_walk (char const*,struct nameidata*) ;
 int mountpoint_last (struct nameidata*) ;
 char* path_init (struct nameidata*,unsigned int) ;
 int terminate_walk (struct nameidata*) ;
 char* trailing_symlink (struct nameidata*) ;

__attribute__((used)) static int
path_mountpoint(struct nameidata *nd, unsigned flags, struct path *path)
{
 const char *s = path_init(nd, flags);
 int err;

 while (!(err = link_path_walk(s, nd)) &&
  (err = mountpoint_last(nd)) > 0) {
  s = trailing_symlink(nd);
 }
 if (!err) {
  *path = nd->path;
  nd->path.mnt = ((void*)0);
  nd->path.dentry = ((void*)0);
  follow_mount(path);
 }
 terminate_walk(nd);
 return err;
}
