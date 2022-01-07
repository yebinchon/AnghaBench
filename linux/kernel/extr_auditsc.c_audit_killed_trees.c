
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct audit_context {struct list_head killed_trees; int in_syscall; } ;


 struct audit_context* audit_context () ;
 scalar_t__ likely (int) ;

struct list_head *audit_killed_trees(void)
{
 struct audit_context *ctx = audit_context();
 if (likely(!ctx || !ctx->in_syscall))
  return ((void*)0);
 return &ctx->killed_trees;
}
