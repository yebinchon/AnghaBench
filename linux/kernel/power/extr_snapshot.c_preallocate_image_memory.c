
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_IMAGE ;
 unsigned long alloc_normal ;
 unsigned long preallocate_image_pages (unsigned long,int ) ;

__attribute__((used)) static unsigned long preallocate_image_memory(unsigned long nr_pages,
           unsigned long avail_normal)
{
 unsigned long alloc;

 if (avail_normal <= alloc_normal)
  return 0;

 alloc = avail_normal - alloc_normal;
 if (nr_pages < alloc)
  alloc = nr_pages;

 return preallocate_image_pages(alloc, GFP_IMAGE);
}
