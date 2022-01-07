
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_ref; } ;


 int klist_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static int klist_dec_and_del(struct klist_node *n)
{
 return kref_put(&n->n_ref, klist_release);
}
