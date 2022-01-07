
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {scalar_t__ sec; scalar_t__ offset; } ;
struct section {int name; int rodata; } ;
struct rela {unsigned long addend; scalar_t__ type; TYPE_2__* sym; } ;
struct objtool_file {int ignore_unreachables; int insn_list; } ;
struct instruction {scalar_t__ sec; scalar_t__ offset; scalar_t__ type; int len; TYPE_1__* jump_dest; scalar_t__ first_jump_src; int list; } ;
struct TYPE_4__ {scalar_t__ type; struct section* sec; } ;
struct TYPE_3__ {scalar_t__ offset; } ;


 int C_JUMP_TABLE_SECTION ;
 scalar_t__ INSN_JUMP_DYNAMIC ;
 scalar_t__ INSN_JUMP_UNCONDITIONAL ;
 scalar_t__ R_X86_64_PC32 ;
 scalar_t__ STT_SECTION ;
 struct rela* find_rela_by_dest (struct section*,unsigned long) ;
 struct rela* find_rela_by_dest_range (scalar_t__,scalar_t__,int ) ;
 scalar_t__ find_symbol_containing (struct section*,unsigned long) ;
 int list ;
 struct instruction* list_prev_entry (struct instruction*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static struct rela *find_jump_table(struct objtool_file *file,
          struct symbol *func,
          struct instruction *insn)
{
 struct rela *text_rela, *table_rela;
 struct instruction *orig_insn = insn;
 struct section *table_sec;
 unsigned long table_offset;






 for (;
      &insn->list != &file->insn_list &&
      insn->sec == func->sec &&
      insn->offset >= func->offset;

      insn = insn->first_jump_src ?: list_prev_entry(insn, list)) {

  if (insn != orig_insn && insn->type == INSN_JUMP_DYNAMIC)
   break;


  if (insn->type == INSN_JUMP_UNCONDITIONAL &&
      insn->jump_dest &&
      (insn->jump_dest->offset <= insn->offset ||
       insn->jump_dest->offset > orig_insn->offset))
      break;


  text_rela = find_rela_by_dest_range(insn->sec, insn->offset,
          insn->len);
  if (!text_rela || text_rela->sym->type != STT_SECTION ||
      !text_rela->sym->sec->rodata)
   continue;

  table_offset = text_rela->addend;
  table_sec = text_rela->sym->sec;

  if (text_rela->type == R_X86_64_PC32)
   table_offset += 4;
  if (find_symbol_containing(table_sec, table_offset) &&
      strcmp(table_sec->name, C_JUMP_TABLE_SECTION))
   continue;


  table_rela = find_rela_by_dest(table_sec, table_offset);
  if (!table_rela)
   continue;






  if (text_rela->type == R_X86_64_PC32)
   file->ignore_unreachables = 1;

  return table_rela;
 }

 return ((void*)0);
}
