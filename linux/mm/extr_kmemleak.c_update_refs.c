
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int gray_list; int count; } ;


 int WARN_ON (int) ;
 scalar_t__ color_gray (struct kmemleak_object*) ;
 int color_white (struct kmemleak_object*) ;
 int get_object (struct kmemleak_object*) ;
 int gray_list ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void update_refs(struct kmemleak_object *object)
{
 if (!color_white(object)) {

  return;
 }







 object->count++;
 if (color_gray(object)) {

  WARN_ON(!get_object(object));
  list_add_tail(&object->gray_list, &gray_list);
 }
}
