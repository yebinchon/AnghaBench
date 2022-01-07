
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct unwind_hint {scalar_t__ type; int sp_reg; int end; int sp_offset; } ;
struct section {int len; TYPE_1__* data; struct section* rela; } ;
struct rela {int addend; TYPE_2__* sym; } ;
struct objtool_file {int hints; int elf; } ;
struct cfi_reg {int offset; int base; } ;
struct TYPE_6__ {scalar_t__ type; int end; struct cfi_reg cfa; } ;
struct instruction {int save; int restore; int hint; TYPE_3__ state; int offset; int sec; } ;
struct TYPE_5__ {int sec; } ;
struct TYPE_4__ {scalar_t__ d_buf; } ;


 int CFI_BP ;
 int CFI_DI ;
 int CFI_DX ;
 int CFI_R10 ;
 int CFI_R13 ;
 int CFI_SP ;
 int CFI_SP_INDIRECT ;
 int CFI_UNDEFINED ;
 scalar_t__ UNWIND_HINT_TYPE_RESTORE ;
 scalar_t__ UNWIND_HINT_TYPE_SAVE ;
 int WARN (char*,...) ;
 int WARN_FUNC (char*,int ,int ,int) ;
 struct instruction* find_insn (struct objtool_file*,int ,int ) ;
 struct rela* find_rela_by_dest (struct section*,int) ;
 struct section* find_section_by_name (int ,char*) ;

__attribute__((used)) static int read_unwind_hints(struct objtool_file *file)
{
 struct section *sec, *relasec;
 struct rela *rela;
 struct unwind_hint *hint;
 struct instruction *insn;
 struct cfi_reg *cfa;
 int i;

 sec = find_section_by_name(file->elf, ".discard.unwind_hints");
 if (!sec)
  return 0;

 relasec = sec->rela;
 if (!relasec) {
  WARN("missing .rela.discard.unwind_hints section");
  return -1;
 }

 if (sec->len % sizeof(struct unwind_hint)) {
  WARN("struct unwind_hint size mismatch");
  return -1;
 }

 file->hints = 1;

 for (i = 0; i < sec->len / sizeof(struct unwind_hint); i++) {
  hint = (struct unwind_hint *)sec->data->d_buf + i;

  rela = find_rela_by_dest(sec, i * sizeof(*hint));
  if (!rela) {
   WARN("can't find rela for unwind_hints[%d]", i);
   return -1;
  }

  insn = find_insn(file, rela->sym->sec, rela->addend);
  if (!insn) {
   WARN("can't find insn for unwind_hints[%d]", i);
   return -1;
  }

  cfa = &insn->state.cfa;

  if (hint->type == UNWIND_HINT_TYPE_SAVE) {
   insn->save = 1;
   continue;

  } else if (hint->type == UNWIND_HINT_TYPE_RESTORE) {
   insn->restore = 1;
   insn->hint = 1;
   continue;
  }

  insn->hint = 1;

  switch (hint->sp_reg) {
  case 128:
   cfa->base = CFI_UNDEFINED;
   break;
  case 130:
   cfa->base = CFI_SP;
   break;
  case 135:
   cfa->base = CFI_BP;
   break;
  case 129:
   cfa->base = CFI_SP_INDIRECT;
   break;
  case 132:
   cfa->base = CFI_R10;
   break;
  case 131:
   cfa->base = CFI_R13;
   break;
  case 134:
   cfa->base = CFI_DI;
   break;
  case 133:
   cfa->base = CFI_DX;
   break;
  default:
   WARN_FUNC("unsupported unwind_hint sp base reg %d",
      insn->sec, insn->offset, hint->sp_reg);
   return -1;
  }

  cfa->offset = hint->sp_offset;
  insn->state.type = hint->type;
  insn->state.end = hint->end;
 }

 return 0;
}
