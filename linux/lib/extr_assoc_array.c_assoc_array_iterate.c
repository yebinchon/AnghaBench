
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_array_ptr {int dummy; } ;
struct assoc_array {int root; } ;


 struct assoc_array_ptr* READ_ONCE (int ) ;
 int assoc_array_subtree_iterate (struct assoc_array_ptr*,int *,int (*) (void const*,void*),void*) ;

int assoc_array_iterate(const struct assoc_array *array,
   int (*iterator)(const void *object,
     void *iterator_data),
   void *iterator_data)
{
 struct assoc_array_ptr *root = READ_ONCE(array->root);

 if (!root)
  return 0;
 return assoc_array_subtree_iterate(root, ((void*)0), iterator, iterator_data);
}
