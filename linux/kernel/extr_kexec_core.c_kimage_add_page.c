
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 unsigned long IND_SOURCE ;
 unsigned long PAGE_MASK ;
 int kimage_add_entry (struct kimage*,unsigned long) ;

__attribute__((used)) static int kimage_add_page(struct kimage *image, unsigned long page)
{
 int result;

 page &= PAGE_MASK;
 result = kimage_add_entry(image, page | IND_SOURCE);

 return result;
}
