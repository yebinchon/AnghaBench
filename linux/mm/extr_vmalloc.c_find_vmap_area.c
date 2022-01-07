
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;


 struct vmap_area* __find_vmap_area (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_area_lock ;

__attribute__((used)) static struct vmap_area *find_vmap_area(unsigned long addr)
{
 struct vmap_area *va;

 spin_lock(&vmap_area_lock);
 va = __find_vmap_area(addr);
 spin_unlock(&vmap_area_lock);

 return va;
}
