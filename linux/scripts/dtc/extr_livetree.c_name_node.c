
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {char* name; } ;


 int assert (int ) ;

struct node *name_node(struct node *node, char *name)
{
 assert(node->name == ((void*)0));

 node->name = name;

 return node;
}
