
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_arg {struct fetch_insn* code; } ;
struct fetch_insn {scalar_t__ op; unsigned long immediate; int data; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ FETCH_NOP_SYMBOL ;
 scalar_t__ FETCH_OP_END ;
 scalar_t__ FETCH_OP_IMM ;
 scalar_t__ kallsyms_lookup_name (int ) ;
 char* strpbrk (int ,char*) ;
 int traceprobe_split_symbol_offset (int ,long*) ;

int traceprobe_update_arg(struct probe_arg *arg)
{
 struct fetch_insn *code = arg->code;
 long offset;
 char *tmp;
 char c;
 int ret = 0;

 while (code && code->op != FETCH_OP_END) {
  if (code->op == FETCH_NOP_SYMBOL) {
   if (code[1].op != FETCH_OP_IMM)
    return -EINVAL;

   tmp = strpbrk(code->data, "+-");
   if (tmp)
    c = *tmp;
   ret = traceprobe_split_symbol_offset(code->data,
            &offset);
   if (ret)
    return ret;

   code[1].immediate =
    (unsigned long)kallsyms_lookup_name(code->data);
   if (tmp)
    *tmp = c;
   if (!code[1].immediate)
    return -ENOENT;
   code[1].immediate += offset;
  }
  code++;
 }
 return 0;
}
