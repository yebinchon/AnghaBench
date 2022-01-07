
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_arg {struct fetch_insn* fmt; struct fetch_insn* comm; struct fetch_insn* name; struct fetch_insn* code; } ;
struct fetch_insn {scalar_t__ op; struct fetch_insn* data; } ;


 scalar_t__ FETCH_NOP_SYMBOL ;
 scalar_t__ FETCH_OP_DATA ;
 scalar_t__ FETCH_OP_END ;
 int kfree (struct fetch_insn*) ;

void traceprobe_free_probe_arg(struct probe_arg *arg)
{
 struct fetch_insn *code = arg->code;

 while (code && code->op != FETCH_OP_END) {
  if (code->op == FETCH_NOP_SYMBOL ||
      code->op == FETCH_OP_DATA)
   kfree(code->data);
  code++;
 }
 kfree(arg->code);
 kfree(arg->name);
 kfree(arg->comm);
 kfree(arg->fmt);
}
