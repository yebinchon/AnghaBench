
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int gfs2_create_inode (struct inode*,struct dentry*,int *,int,int ,int *,int ,int) ;

__attribute__((used)) static int gfs2_create(struct inode *dir, struct dentry *dentry,
         umode_t mode, bool excl)
{
 return gfs2_create_inode(dir, dentry, ((void*)0), S_IFREG | mode, 0, ((void*)0), 0, excl);
}
