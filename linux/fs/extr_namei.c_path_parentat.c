
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int * dentry; int * mnt; } ;
struct nameidata {struct path path; } ;


 int complete_walk (struct nameidata*) ;
 int link_path_walk (char const*,struct nameidata*) ;
 char* path_init (struct nameidata*,unsigned int) ;
 int terminate_walk (struct nameidata*) ;

__attribute__((used)) static int path_parentat(struct nameidata *nd, unsigned flags,
    struct path *parent)
{
 const char *s = path_init(nd, flags);
 int err = link_path_walk(s, nd);
 if (!err)
  err = complete_walk(nd);
 if (!err) {
  *parent = nd->path;
  nd->path.mnt = ((void*)0);
  nd->path.dentry = ((void*)0);
 }
 terminate_walk(nd);
 return err;
}
