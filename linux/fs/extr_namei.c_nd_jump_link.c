
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct nameidata {int flags; struct path path; int inode; } ;
struct TYPE_4__ {struct nameidata* nameidata; } ;
struct TYPE_3__ {int d_inode; } ;


 int LOOKUP_JUMPED ;
 TYPE_2__* current ;
 int path_put (struct path*) ;

void nd_jump_link(struct path *path)
{
 struct nameidata *nd = current->nameidata;
 path_put(&nd->path);

 nd->path = *path;
 nd->inode = nd->path.dentry->d_inode;
 nd->flags |= LOOKUP_JUMPED;
}
