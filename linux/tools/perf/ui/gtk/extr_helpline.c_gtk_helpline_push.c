
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int statbar_ctx_id; int statbar; } ;


 int GTK_STATUSBAR (int ) ;
 int gtk_statusbar_push (int ,int ,char const*) ;
 int perf_gtk__is_active_context (TYPE_1__*) ;
 TYPE_1__* pgctx ;

__attribute__((used)) static void gtk_helpline_push(const char *msg)
{
 if (!perf_gtk__is_active_context(pgctx))
  return;

 gtk_statusbar_push(GTK_STATUSBAR(pgctx->statbar),
      pgctx->statbar_ctx_id, msg);
}
