
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 struct node* build_and_name_child_node (struct node*,char*) ;
 int die (char*,char*) ;
 struct node* get_subnode (struct node*,char*) ;

__attribute__((used)) static struct node *build_root_node(struct node *dt, char *name)
{
 struct node *an;

 an = get_subnode(dt, name);
 if (!an)
  an = build_and_name_child_node(dt, name);

 if (!an)
  die("Could not build root node /%s\n", name);

 return an;
}
