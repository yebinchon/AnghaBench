
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramoops_context {scalar_t__ pmsg_read_cnt; scalar_t__ ftrace_read_cnt; scalar_t__ console_read_cnt; scalar_t__ dump_read_cnt; } ;
struct pstore_info {struct ramoops_context* data; } ;



__attribute__((used)) static int ramoops_pstore_open(struct pstore_info *psi)
{
 struct ramoops_context *cxt = psi->data;

 cxt->dump_read_cnt = 0;
 cxt->console_read_cnt = 0;
 cxt->ftrace_read_cnt = 0;
 cxt->pmsg_read_cnt = 0;
 return 0;
}
