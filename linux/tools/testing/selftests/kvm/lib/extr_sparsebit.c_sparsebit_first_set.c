
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;
struct node {int dummy; } ;
typedef int sparsebit_idx_t ;


 int assert (int ) ;
 struct node* node_first (struct sparsebit*) ;
 int node_first_set (struct node*,int ) ;
 int sparsebit_any_set (struct sparsebit*) ;

sparsebit_idx_t sparsebit_first_set(struct sparsebit *s)
{
 struct node *nodep;


 assert(sparsebit_any_set(s));

 nodep = node_first(s);
 return node_first_set(nodep, 0);
}
