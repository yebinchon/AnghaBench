
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memunmap_pages (void*) ;

__attribute__((used)) static void devm_memremap_pages_release(void *data)
{
 memunmap_pages(data);
}
