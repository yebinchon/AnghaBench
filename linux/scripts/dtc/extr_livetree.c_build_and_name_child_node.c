
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int add_child (struct node*,struct node*) ;
 struct node* build_node (int *,int *,int *) ;
 int name_node (struct node*,int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static struct node *build_and_name_child_node(struct node *parent, char *name)
{
 struct node *node;

 node = build_node(((void*)0), ((void*)0), ((void*)0));
 name_node(node, xstrdup(name));
 add_child(parent, node);

 return node;
}
