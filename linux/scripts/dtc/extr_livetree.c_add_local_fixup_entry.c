
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_32 ;
struct property {int name; } ;
struct node {char* name; struct node* parent; } ;
struct marker {int offset; } ;
struct dt_info {int dummy; } ;
typedef int fdt32_t ;


 int TYPE_UINT32 ;
 int append_to_property (struct node*,int ,int *,int,int ) ;
 struct node* build_and_name_child_node (struct node*,char*) ;
 int cpu_to_fdt32 (int ) ;
 int free (char**) ;
 struct node* get_subnode (struct node*,char*) ;
 char** xmalloc (int) ;

__attribute__((used)) static void add_local_fixup_entry(struct dt_info *dti,
  struct node *lfn, struct node *node,
  struct property *prop, struct marker *m,
  struct node *refnode)
{
 struct node *wn, *nwn;
 fdt32_t value_32;
 char **compp;
 int i, depth;


 depth = 0;
 for (wn = node; wn; wn = wn->parent)
  depth++;


 compp = xmalloc(sizeof(*compp) * depth);


 for (wn = node, i = depth - 1; wn; wn = wn->parent, i--)
  compp[i] = wn->name;


 for (wn = lfn, i = 1; i < depth; i++, wn = nwn) {

  nwn = get_subnode(wn, compp[i]);
  if (!nwn)
   nwn = build_and_name_child_node(wn, compp[i]);
 }

 free(compp);

 value_32 = cpu_to_fdt32(m->offset);
 append_to_property(wn, prop->name, &value_32, sizeof(value_32), TYPE_UINT32);
}
