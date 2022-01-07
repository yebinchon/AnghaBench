
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;


 int free_vmap_area_list ;
 int free_vmap_area_root ;
 int merge_or_add_vmap_area (struct vmap_area*,int *,int *) ;
 int unlink_va (struct vmap_area*,int *) ;
 int vmap_area_root ;

__attribute__((used)) static void __free_vmap_area(struct vmap_area *va)
{



 unlink_va(va, &vmap_area_root);




 merge_or_add_vmap_area(va,
  &free_vmap_area_root, &free_vmap_area_list);
}
