
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_type {int dummy; } ;
struct fetch_insn {int op; unsigned int param; unsigned long immediate; char* data; long offset; } ;


 int BAD_DEREF_OFFS ;
 int BAD_FETCH_ARG ;
 int BAD_FILE_OFFS ;
 int BAD_IMM ;
 int BAD_MEM_ADDR ;
 int BAD_REG_NAME ;
 int COMM_CANT_DEREF ;
 int DEREF_NEED_BRACE ;
 int DEREF_OPEN_BRACE ;
 int EINVAL ;
 int ENOMEM ;
 int FETCH_NOP_SYMBOL ;
 int FETCH_OP_COMM ;
 int FETCH_OP_DATA ;
 void* FETCH_OP_DEREF ;
 int FETCH_OP_FOFFS ;
 void* FETCH_OP_IMM ;
 scalar_t__ FETCH_OP_NOP ;
 int FETCH_OP_REG ;
 int FETCH_OP_UDEREF ;
 int FILE_ON_KPROBE ;
 int GFP_KERNEL ;
 int SYM_ON_UPROBE ;
 int TOO_MANY_OPS ;
 unsigned int TPARG_FL_KERNEL ;
 int __parse_imm_string (char*,char**,int) ;
 struct fetch_type* find_fetch_type (int *) ;
 int isdigit (char) ;
 char* kstrdup (char*,int ) ;
 int kstrtol (char*,int ,long*) ;
 int kstrtoul (char*,int ,unsigned long*) ;
 int parse_probe_vars (char*,struct fetch_type const*,struct fetch_insn*,unsigned int,int) ;
 int regs_query_register_offset (char*) ;
 int str_to_immediate (char*,unsigned long*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int trace_probe_log_err (int,int ) ;

__attribute__((used)) static int
parse_probe_arg(char *arg, const struct fetch_type *type,
  struct fetch_insn **pcode, struct fetch_insn *end,
  unsigned int flags, int offs)
{
 struct fetch_insn *code = *pcode;
 unsigned long param;
 int deref = FETCH_OP_DEREF;
 long offset = 0;
 char *tmp;
 int ret = 0;

 switch (arg[0]) {
 case '$':
  ret = parse_probe_vars(arg + 1, type, code, flags, offs);
  break;

 case '%':
  ret = regs_query_register_offset(arg + 1);
  if (ret >= 0) {
   code->op = FETCH_OP_REG;
   code->param = (unsigned int)ret;
   ret = 0;
  } else
   trace_probe_log_err(offs, BAD_REG_NAME);
  break;

 case '@':
  if (isdigit(arg[1])) {
   ret = kstrtoul(arg + 1, 0, &param);
   if (ret) {
    trace_probe_log_err(offs, BAD_MEM_ADDR);
    break;
   }

   code->op = FETCH_OP_IMM;
   code->immediate = param;
  } else if (arg[1] == '+') {

   if (flags & TPARG_FL_KERNEL) {
    trace_probe_log_err(offs, FILE_ON_KPROBE);
    return -EINVAL;
   }
   ret = kstrtol(arg + 2, 0, &offset);
   if (ret) {
    trace_probe_log_err(offs, BAD_FILE_OFFS);
    break;
   }

   code->op = FETCH_OP_FOFFS;
   code->immediate = (unsigned long)offset;
  } else {

   if (!(flags & TPARG_FL_KERNEL)) {
    trace_probe_log_err(offs, SYM_ON_UPROBE);
    return -EINVAL;
   }

   code->op = FETCH_NOP_SYMBOL;
   code->data = kstrdup(arg + 1, GFP_KERNEL);
   if (!code->data)
    return -ENOMEM;
   if (++code == end) {
    trace_probe_log_err(offs, TOO_MANY_OPS);
    return -EINVAL;
   }
   code->op = FETCH_OP_IMM;
   code->immediate = 0;
  }

  if (++code == end) {
   trace_probe_log_err(offs, TOO_MANY_OPS);
   return -EINVAL;
  }
  *pcode = code;
  code->op = FETCH_OP_DEREF;
  code->offset = offset;
  break;

 case '+':
 case '-':
  if (arg[1] == 'u') {
   deref = FETCH_OP_UDEREF;
   arg[1] = arg[0];
   arg++;
  }
  if (arg[0] == '+')
   arg++;
  tmp = strchr(arg, '(');
  if (!tmp) {
   trace_probe_log_err(offs, DEREF_NEED_BRACE);
   return -EINVAL;
  }
  *tmp = '\0';
  ret = kstrtol(arg, 0, &offset);
  if (ret) {
   trace_probe_log_err(offs, BAD_DEREF_OFFS);
   break;
  }
  offs += (tmp + 1 - arg) + (arg[0] != '-' ? 1 : 0);
  arg = tmp + 1;
  tmp = strrchr(arg, ')');
  if (!tmp) {
   trace_probe_log_err(offs + strlen(arg),
         DEREF_OPEN_BRACE);
   return -EINVAL;
  } else {
   const struct fetch_type *t2 = find_fetch_type(((void*)0));

   *tmp = '\0';
   ret = parse_probe_arg(arg, t2, &code, end, flags, offs);
   if (ret)
    break;
   if (code->op == FETCH_OP_COMM ||
       code->op == FETCH_OP_DATA) {
    trace_probe_log_err(offs, COMM_CANT_DEREF);
    return -EINVAL;
   }
   if (++code == end) {
    trace_probe_log_err(offs, TOO_MANY_OPS);
    return -EINVAL;
   }
   *pcode = code;

   code->op = deref;
   code->offset = offset;
  }
  break;
 case '\\':
  if (arg[1] == '"') {
   ret = __parse_imm_string(arg + 2, &tmp, offs + 2);
   if (ret)
    break;
   code->op = FETCH_OP_DATA;
   code->data = tmp;
  } else {
   ret = str_to_immediate(arg + 1, &code->immediate);
   if (ret)
    trace_probe_log_err(offs + 1, BAD_IMM);
   else
    code->op = FETCH_OP_IMM;
  }
  break;
 }
 if (!ret && code->op == FETCH_OP_NOP) {

  trace_probe_log_err(offs, BAD_FETCH_ARG);
  ret = -EINVAL;
 }
 return ret;
}
