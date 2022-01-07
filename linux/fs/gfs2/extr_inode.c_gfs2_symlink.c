
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENAMETOOLONG ;
 int GFS2_I (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int gfs2_create_inode (struct inode*,struct dentry*,int *,int,int ,char const*,unsigned int,int ) ;
 unsigned int gfs2_max_stuffed_size (int ) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static int gfs2_symlink(struct inode *dir, struct dentry *dentry,
   const char *symname)
{
 unsigned int size;

 size = strlen(symname);
 if (size >= gfs2_max_stuffed_size(GFS2_I(dir)))
  return -ENAMETOOLONG;

 return gfs2_create_inode(dir, dentry, ((void*)0), S_IFLNK | S_IRWXUGO, 0, symname, size, 0);
}
