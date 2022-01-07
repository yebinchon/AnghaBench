
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int proc_pident_readdir (struct file*,struct dir_context*,int ,int ) ;
 int tid_base_stuff ;

__attribute__((used)) static int proc_tid_base_readdir(struct file *file, struct dir_context *ctx)
{
 return proc_pident_readdir(file, ctx,
       tid_base_stuff, ARRAY_SIZE(tid_base_stuff));
}
