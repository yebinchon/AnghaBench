
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct element {int flags; int compound; size_t class; size_t method; int tag; int entry_index; TYPE_4__* action; struct element* next; struct element* children; struct element* render_next; TYPE_6__* type_def; TYPE_3__* type; TYPE_1__* name; } ;
struct TYPE_12__ {int ref_count; TYPE_5__* name; } ;
struct TYPE_11__ {int content; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {TYPE_2__* type; } ;
struct TYPE_8__ {struct element* element; } ;
struct TYPE_7__ {int content; } ;
typedef int FILE ;



 size_t ASN1_PRIM ;
 size_t ASN1_UNIV ;

 int ELEMENT_CONDITIONAL ;
 int ELEMENT_RENDERED ;
 int ELEMENT_SKIPPABLE ;
 int ELEMENT_TAG_SPECIFIED ;






 int * asn1_classes ;
 int * asn1_methods ;
 int * asn1_universal_tags ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int nr_entries ;
 int render_depth ;
 struct element** render_list_p ;
 int render_more (int *,char*,...) ;
 int render_opcode (int *,char*,...) ;
 int stderr ;

__attribute__((used)) static void render_element(FILE *out, struct element *e, struct element *tag)
{
 struct element *ec, *x;
 const char *cond, *act;
 int entry, skippable = 0, outofline = 0;

 if (e->flags & ELEMENT_SKIPPABLE ||
     (tag && tag->flags & ELEMENT_SKIPPABLE))
  skippable = 1;

 if ((e->type_def && e->type_def->ref_count > 1) ||
     skippable)
  outofline = 1;

 if (e->type_def && out) {
  render_more(out, "\t// %s\n", e->type_def->name->content);
 }


 cond = (e->flags & ELEMENT_CONDITIONAL ||
  (tag && tag->flags & ELEMENT_CONDITIONAL)) ? "COND_" : "";
 act = e->action ? "_ACT" : "";
 switch (e->compound) {
 case 135:
  render_opcode(out, "ASN1_OP_%sMATCH_ANY%s%s,",
         cond, act, skippable ? "_OR_SKIP" : "");
  if (e->name)
   render_more(out, "\t\t// %s", e->name->content);
  render_more(out, "\n");
  goto dont_render_tag;

 case 129:
  render_element(out, e->children, e);
  return;

 case 133:
 case 132:
 case 131:
 case 130:
  render_opcode(out, "ASN1_OP_%sMATCH%s%s,",
         cond,
         outofline ? "_JUMP" : "",
         skippable ? "_OR_SKIP" : "");
  break;

 case 134:
  goto dont_render_tag;

 case 128:
  if (e->class == ASN1_UNIV && e->method == ASN1_PRIM && e->tag == 0)
   goto dont_render_tag;
 default:
  render_opcode(out, "ASN1_OP_%sMATCH%s%s,",
         cond, act,
         skippable ? "_OR_SKIP" : "");
  break;
 }

 x = tag ?: e;
 if (x->name)
  render_more(out, "\t\t// %s", x->name->content);
 render_more(out, "\n");


 if (!tag || !(tag->flags & ELEMENT_TAG_SPECIFIED))
  tag = e;

 if (tag->class == ASN1_UNIV &&
     tag->tag != 14 &&
     tag->tag != 15 &&
     tag->tag != 31)
  render_opcode(out, "_tag(%s, %s, %s),\n",
         asn1_classes[tag->class],
         asn1_methods[tag->method | e->method],
         asn1_universal_tags[tag->tag]);
 else
  render_opcode(out, "_tagn(%s, %s, %2u),\n",
         asn1_classes[tag->class],
         asn1_methods[tag->method | e->method],
         tag->tag);
 tag = ((void*)0);
dont_render_tag:


 switch (e->compound) {
 case 128:
  render_element(out, e->type->type->element, tag);
  if (e->action)
   render_opcode(out, "ASN1_OP_%sACT,\n",
          skippable ? "MAYBE_" : "");
  break;

 case 133:
  if (outofline) {


   render_opcode(out, "_jump_target(%u),", e->entry_index);
   if (e->type_def && e->type_def->name)
    render_more(out, "\t\t// --> %s",
         e->type_def->name->content);
   render_more(out, "\n");
   if (!(e->flags & ELEMENT_RENDERED)) {
    e->flags |= ELEMENT_RENDERED;
    *render_list_p = e;
    render_list_p = &e->render_next;
   }
   return;
  } else {

   render_depth++;
   for (ec = e->children; ec; ec = ec->next)
    render_element(out, ec, ((void*)0));
   render_depth--;
   render_opcode(out, "ASN1_OP_END_SEQ%s,\n", act);
  }
  break;

 case 132:
 case 130:
  if (outofline) {


   render_opcode(out, "_jump_target(%u),", e->entry_index);
   if (e->type_def && e->type_def->name)
    render_more(out, "\t\t// --> %s",
         e->type_def->name->content);
   render_more(out, "\n");
   if (!(e->flags & ELEMENT_RENDERED)) {
    e->flags |= ELEMENT_RENDERED;
    *render_list_p = e;
    render_list_p = &e->render_next;
   }
   return;
  } else {

   entry = nr_entries;
   render_depth++;
   render_element(out, e->children, ((void*)0));
   render_depth--;
   if (e->compound == 132)
    render_opcode(out, "ASN1_OP_END_SEQ_OF%s,\n", act);
   else
    render_opcode(out, "ASN1_OP_END_SET_OF%s,\n", act);
   render_opcode(out, "_jump_target(%u),\n", entry);
  }
  break;

 case 131:






  fprintf(stderr, "The ASN.1 SET type is not currently supported.\n");
  exit(1);

 case 134:
  for (ec = e->children; ec; ec = ec->next)
   render_element(out, ec, ec);
  if (!skippable)
   render_opcode(out, "ASN1_OP_COND_FAIL,\n");
  if (e->action)
   render_opcode(out, "ASN1_OP_ACT,\n");
  break;

 default:
  break;
 }

 if (e->action)
  render_opcode(out, "_action(ACT_%s),\n", e->action->name);
}
