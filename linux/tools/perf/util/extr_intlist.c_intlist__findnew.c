
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int dummy; } ;
struct int_node {int dummy; } ;


 struct int_node* __intlist__findnew (struct intlist*,int,int) ;

struct int_node *intlist__findnew(struct intlist *ilist, int i)
{
 return __intlist__findnew(ilist, i, 1);
}
