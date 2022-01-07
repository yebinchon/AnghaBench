
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct node {int dummy; } ;
struct data {int dummy; } ;


 int REF_PHANDLE ;
 int TYPE_STRING ;
 int add_child (struct node*,struct node*) ;
 struct node* build_node (struct property*,struct node*,int *) ;
 struct property* build_property (char*,struct data,int *) ;
 struct data data_add_marker (struct data,int ,char*) ;
 struct data data_append_data (struct data,char*,scalar_t__) ;
 struct data data_append_integer (struct data,int,int) ;
 struct data empty_data ;
 int name_node (struct node*,char*) ;
 scalar_t__ strlen (char*) ;
 int xasprintf (char**,char*,int ) ;

struct node * add_orphan_node(struct node *dt, struct node *new_node, char *ref)
{
 static unsigned int next_orphan_fragment = 0;
 struct node *node;
 struct property *p;
 struct data d = empty_data;
 char *name;

 if (ref[0] == '/') {
  d = data_add_marker(d, TYPE_STRING, ref);
  d = data_append_data(d, ref, strlen(ref) + 1);

  p = build_property("target-path", d, ((void*)0));
 } else {
  d = data_add_marker(d, REF_PHANDLE, ref);
  d = data_append_integer(d, 0xffffffff, 32);

  p = build_property("target", d, ((void*)0));
 }

 xasprintf(&name, "fragment@%u",
   next_orphan_fragment++);
 name_node(new_node, "__overlay__");
 node = build_node(p, new_node, ((void*)0));
 name_node(node, name);

 add_child(dt, node);
 return dt;
}
