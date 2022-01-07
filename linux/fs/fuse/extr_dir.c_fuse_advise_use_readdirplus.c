
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int state; } ;


 int FUSE_I_ADVISE_RDPLUS ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void fuse_advise_use_readdirplus(struct inode *dir)
{
 struct fuse_inode *fi = get_fuse_inode(dir);

 set_bit(FUSE_I_ADVISE_RDPLUS, &fi->state);
}
