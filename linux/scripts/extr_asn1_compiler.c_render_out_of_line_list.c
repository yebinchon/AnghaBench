
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct element {int entry_index; int compound; TYPE_1__* action; struct element* next; struct element* children; struct element* render_next; } ;
struct TYPE_2__ {int name; } ;
typedef int FILE ;






 int nr_entries ;
 int render_depth ;
 int render_element (int *,struct element*,int *) ;
 struct element* render_list ;
 struct element** render_list_p ;
 int render_more (int *,char*) ;
 int render_opcode (int *,char*,...) ;

__attribute__((used)) static void render_out_of_line_list(FILE *out)
{
 struct element *e, *ce;
 const char *act;
 int entry;

 while ((e = render_list)) {
  render_list = e->render_next;
  if (!render_list)
   render_list_p = &render_list;

  render_more(out, "\n");
  e->entry_index = entry = nr_entries;
  render_depth++;
  for (ce = e->children; ce; ce = ce->next)
   render_element(out, ce, ((void*)0));
  render_depth--;

  act = e->action ? "_ACT" : "";
  switch (e->compound) {
  case 131:
   render_opcode(out, "ASN1_OP_END_SEQ%s,\n", act);
   break;
  case 130:
   render_opcode(out, "ASN1_OP_END_SEQ_OF%s,\n", act);
   render_opcode(out, "_jump_target(%u),\n", entry);
   break;
  case 129:
   render_opcode(out, "ASN1_OP_END_SET%s,\n", act);
   break;
  case 128:
   render_opcode(out, "ASN1_OP_END_SET_OF%s,\n", act);
   render_opcode(out, "_jump_target(%u),\n", entry);
   break;
  default:
   break;
  }
  if (e->action)
   render_opcode(out, "_action(ACT_%s),\n",
          e->action->name);
  render_opcode(out, "ASN1_OP_RETURN,\n");
 }
}
