
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {struct symbol* visited; void* expansion_trail; struct string_list* defn; } ;
struct string_list {int tag; char* string; struct string_list* next; } ;
struct TYPE_2__ {char* name; } ;
 struct symbol* add_symbol (char*,size_t,struct string_list*,int ) ;
 struct string_list** alloca (int) ;
 struct string_list* concat_list (int ,int ,int ,int ,int ,int *) ;
 int debugfile ;
 int error_with_pos (char*,char*,char*) ;
 void* expansion_trail ;
 struct symbol* find_symbol (char*,int,int ) ;
 int flag_dump_defs ;
 int fprintf (int ,char*,char*,...) ;
 int mk_node (char*) ;
 unsigned long partial_crc32 (char*,unsigned long) ;
 unsigned long partial_crc32_one (char,unsigned long) ;
 TYPE_1__* symbol_types ;
 struct symbol* visited_symbols ;

__attribute__((used)) static unsigned long expand_and_crc_sym(struct symbol *sym, unsigned long crc)
{
 struct string_list *list = sym->defn;
 struct string_list **e, **b;
 struct string_list *tmp, **tmp2;
 int elem = 1;

 if (!list)
  return crc;

 tmp = list;
 while ((tmp = tmp->next) != ((void*)0))
  elem++;

 b = alloca(elem * sizeof(*e));
 e = b + elem;
 tmp2 = e - 1;

 *(tmp2--) = list;
 while ((list = list->next) != ((void*)0))
  *(tmp2--) = list;

 while (b != e) {
  struct string_list *cur;
  struct symbol *subsym;

  cur = *(b++);
  switch (cur->tag) {
  case 131:
   if (flag_dump_defs)
    fprintf(debugfile, "%s ", cur->string);
   crc = partial_crc32(cur->string, crc);
   crc = partial_crc32_one(' ', crc);
   break;

  case 132:
  case 129:
   subsym = find_symbol(cur->string, cur->tag, 0);

   if (subsym->expansion_trail) {
    if (flag_dump_defs)
     fprintf(debugfile, "%s ", cur->string);
    crc = partial_crc32(cur->string, crc);
    crc = partial_crc32_one(' ', crc);
   } else {
    subsym->expansion_trail = expansion_trail;
    expansion_trail = subsym;
    crc = expand_and_crc_sym(subsym, crc);
   }
   break;

  case 130:
  case 128:
  case 133:
   subsym = find_symbol(cur->string, cur->tag, 0);
   if (!subsym) {
    struct string_list *n;

    error_with_pos("expand undefined %s %s",
            symbol_types[cur->tag].name,
            cur->string);
    n = concat_list(mk_node
      (symbol_types[cur->tag].name),
      mk_node(cur->string),
      mk_node("{"),
      mk_node("UNKNOWN"),
      mk_node("}"), ((void*)0));
    subsym =
        add_symbol(cur->string, cur->tag, n, 0);
   }
   if (subsym->expansion_trail) {
    if (flag_dump_defs) {
     fprintf(debugfile, "%s %s ",
      symbol_types[cur->tag].name,
      cur->string);
    }

    crc = partial_crc32(symbol_types[cur->tag].name,
          crc);
    crc = partial_crc32_one(' ', crc);
    crc = partial_crc32(cur->string, crc);
    crc = partial_crc32_one(' ', crc);
   } else {
    subsym->expansion_trail = expansion_trail;
    expansion_trail = subsym;
    crc = expand_and_crc_sym(subsym, crc);
   }
   break;
  }
 }

 {
  static struct symbol **end = &visited_symbols;

  if (!sym->visited) {
   *end = sym;
   end = &sym->visited;
   sym->visited = (struct symbol *)-1L;
  }
 }

 return crc;
}
