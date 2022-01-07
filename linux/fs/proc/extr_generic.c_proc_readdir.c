
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int PDE (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int proc_readdir_de (struct file*,struct dir_context*,int ) ;

int proc_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);

 return proc_readdir_de(file, ctx, PDE(inode));
}
