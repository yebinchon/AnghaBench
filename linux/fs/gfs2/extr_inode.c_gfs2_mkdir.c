
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int GFS2_I (struct inode*) ;
 int S_IFDIR ;
 int gfs2_create_inode (struct inode*,struct dentry*,int *,int,int ,int *,unsigned int,int ) ;
 unsigned int gfs2_max_stuffed_size (int ) ;

__attribute__((used)) static int gfs2_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 unsigned dsize = gfs2_max_stuffed_size(GFS2_I(dir));
 return gfs2_create_inode(dir, dentry, ((void*)0), S_IFDIR | mode, 0, ((void*)0), dsize, 0);
}
