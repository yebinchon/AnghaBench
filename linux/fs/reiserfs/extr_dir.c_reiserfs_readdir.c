
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int file_inode (struct file*) ;
 int reiserfs_readdir_inode (int ,struct dir_context*) ;

__attribute__((used)) static int reiserfs_readdir(struct file *file, struct dir_context *ctx)
{
 return reiserfs_readdir_inode(file_inode(file), ctx);
}
