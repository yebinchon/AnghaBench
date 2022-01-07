
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_context {int prio; int current_state; } ;


 int AUDIT_RECORD_CONTEXT ;

__attribute__((used)) static void audit_set_auditable(struct audit_context *ctx)
{
 if (!ctx->prio) {
  ctx->prio = 1;
  ctx->current_state = AUDIT_RECORD_CONTEXT;
 }
}
