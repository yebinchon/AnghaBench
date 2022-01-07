
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int * s_fs_info; } ;


 int kfree (int *) ;

void kernfs_free_fs_context(struct fs_context *fc)
{

 kfree(fc->s_fs_info);
 fc->s_fs_info = ((void*)0);
}
