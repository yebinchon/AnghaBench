
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int s_fs_info; } ;


 int kfree (int ) ;

__attribute__((used)) static void ramfs_free_fc(struct fs_context *fc)
{
 kfree(fc->s_fs_info);
}
