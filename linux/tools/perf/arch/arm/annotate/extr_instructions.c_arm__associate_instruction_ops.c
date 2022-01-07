
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_ops {int dummy; } ;
struct arm_annotate {int jump_insn; int call_insn; } ;
struct arch {struct arm_annotate* priv; } ;
typedef int regmatch_t ;


 int arch__associate_ins_ops (struct arch*,char const*,struct ins_ops*) ;
 struct ins_ops call_ops ;
 struct ins_ops jump_ops ;
 int regexec (int *,char const*,int,int *,int ) ;

__attribute__((used)) static struct ins_ops *arm__associate_instruction_ops(struct arch *arch, const char *name)
{
 struct arm_annotate *arm = arch->priv;
 struct ins_ops *ops;
 regmatch_t match[2];

 if (!regexec(&arm->call_insn, name, 2, match, 0))
  ops = &call_ops;
 else if (!regexec(&arm->jump_insn, name, 2, match, 0))
  ops = &jump_ops;
 else
  return ((void*)0);

 arch__associate_ins_ops(arch, name, ops);
 return ops;
}
