
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int fs_private; } ;


 int kfree (int ) ;

__attribute__((used)) static void pseudo_fs_free(struct fs_context *fc)
{
 kfree(fc->fs_private);
}
