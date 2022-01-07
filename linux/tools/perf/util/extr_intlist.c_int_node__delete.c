
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_node {int dummy; } ;


 int free (struct int_node*) ;

__attribute__((used)) static void int_node__delete(struct int_node *ilist)
{
 free(ilist);
}
