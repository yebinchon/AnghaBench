
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int * ops; } ;


 int sel_context_ops ;

__attribute__((used)) static int sel_init_fs_context(struct fs_context *fc)
{
 fc->ops = &sel_context_ops;
 return 0;
}
