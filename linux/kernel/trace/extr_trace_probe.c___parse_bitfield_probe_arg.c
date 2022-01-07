
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_type {int size; } ;
struct fetch_insn {scalar_t__ op; unsigned long lshift; unsigned long rshift; int basesize; } ;


 unsigned long BYTES_TO_BITS (int ) ;
 int EINVAL ;
 scalar_t__ FETCH_OP_MOD_BF ;
 scalar_t__ FETCH_OP_NOP ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static int __parse_bitfield_probe_arg(const char *bf,
          const struct fetch_type *t,
          struct fetch_insn **pcode)
{
 struct fetch_insn *code = *pcode;
 unsigned long bw, bo;
 char *tail;

 if (*bf != 'b')
  return 0;

 bw = simple_strtoul(bf + 1, &tail, 0);

 if (bw == 0 || *tail != '@')
  return -EINVAL;

 bf = tail + 1;
 bo = simple_strtoul(bf, &tail, 0);

 if (tail == bf || *tail != '/')
  return -EINVAL;
 code++;
 if (code->op != FETCH_OP_NOP)
  return -EINVAL;
 *pcode = code;

 code->op = FETCH_OP_MOD_BF;
 code->lshift = BYTES_TO_BITS(t->size) - (bw + bo);
 code->rshift = BYTES_TO_BITS(t->size) - bw;
 code->basesize = t->size;

 return (BYTES_TO_BITS(t->size) < (bw + bo)) ? -EINVAL : 0;
}
