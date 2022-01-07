
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int va_end; int va_start; } ;


 int vunmap_page_range (int ,int ) ;

__attribute__((used)) static void unmap_vmap_area(struct vmap_area *va)
{
 vunmap_page_range(va->va_start, va->va_end);
}
