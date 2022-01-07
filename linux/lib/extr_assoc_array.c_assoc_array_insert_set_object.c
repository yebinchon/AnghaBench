
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_array_edit {int leaf; } ;


 int BUG_ON (int) ;
 int assoc_array_leaf_to_ptr (void*) ;

void assoc_array_insert_set_object(struct assoc_array_edit *edit, void *object)
{
 BUG_ON(!object);
 edit->leaf = assoc_array_leaf_to_ptr(object);
}
