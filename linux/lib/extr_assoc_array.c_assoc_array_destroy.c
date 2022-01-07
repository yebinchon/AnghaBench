
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_array_ops {int dummy; } ;
struct assoc_array {int * root; } ;


 int assoc_array_destroy_subtree (int *,struct assoc_array_ops const*) ;

void assoc_array_destroy(struct assoc_array *array,
    const struct assoc_array_ops *ops)
{
 assoc_array_destroy_subtree(array->root, ops);
 array->root = ((void*)0);
}
