
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramoops_context {int max_dump_cnt; int max_ftrace_cnt; int * fprzs; int * dprzs; } ;


 int kfree (int *) ;
 int persistent_ram_free (int ) ;

__attribute__((used)) static void ramoops_free_przs(struct ramoops_context *cxt)
{
 int i;


 if (cxt->dprzs) {
  for (i = 0; i < cxt->max_dump_cnt; i++)
   persistent_ram_free(cxt->dprzs[i]);

  kfree(cxt->dprzs);
  cxt->max_dump_cnt = 0;
 }


 if (cxt->fprzs) {
  for (i = 0; i < cxt->max_ftrace_cnt; i++)
   persistent_ram_free(cxt->fprzs[i]);
  kfree(cxt->fprzs);
  cxt->max_ftrace_cnt = 0;
 }
}
