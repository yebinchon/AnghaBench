
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {int dummy; } ;


 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (int *,void*,unsigned int) ;

__attribute__((used)) static void extract_hash(struct page *hpage, unsigned int hoffset,
    unsigned int hsize, u8 *out)
{
 void *virt = kmap_atomic(hpage);

 memcpy(out, virt + hoffset, hsize);
 kunmap_atomic(virt);
}
