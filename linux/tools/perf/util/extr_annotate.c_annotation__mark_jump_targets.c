
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct symbol {int name; } ;
struct TYPE_3__ {size_t offset; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct disasm_line {TYPE_2__ ops; } ;
struct annotation_line {scalar_t__ jump_sources; } ;
struct annotation {scalar_t__ max_jump_sources; int nr_jumps; struct annotation_line** offsets; } ;


 struct disasm_line* disasm_line (struct annotation_line*) ;
 int disasm_line__is_valid_local_jump (struct disasm_line*,struct symbol*) ;
 scalar_t__ strstr (int ,char*) ;
 size_t symbol__size (struct symbol*) ;

void annotation__mark_jump_targets(struct annotation *notes, struct symbol *sym)
{
 u64 offset, size = symbol__size(sym);


 if (strstr(sym->name, "@plt"))
  return;

 for (offset = 0; offset < size; ++offset) {
  struct annotation_line *al = notes->offsets[offset];
  struct disasm_line *dl;

  dl = disasm_line(al);

  if (!disasm_line__is_valid_local_jump(dl, sym))
   continue;

  al = notes->offsets[dl->ops.target.offset];





  if (al == ((void*)0))
   continue;

  if (++al->jump_sources > notes->max_jump_sources)
   notes->max_jump_sources = al->jump_sources;

  ++notes->nr_jumps;
 }
}
