
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int dir_emit_dots (struct file*,struct dir_context*) ;

__attribute__((used)) static int empty_dir_readdir(struct file *file, struct dir_context *ctx)
{
 dir_emit_dots(file, ctx);
 return 0;
}
