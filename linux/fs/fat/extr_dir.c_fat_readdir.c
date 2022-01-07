
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int __fat_readdir (int ,struct file*,struct dir_context*,int ,int *) ;
 int file_inode (struct file*) ;

__attribute__((used)) static int fat_readdir(struct file *file, struct dir_context *ctx)
{
 return __fat_readdir(file_inode(file), file, ctx, 0, ((void*)0));
}
