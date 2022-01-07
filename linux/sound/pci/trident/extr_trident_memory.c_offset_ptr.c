
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;


 int ALIGN_PAGE_SIZE ;
 int get_aligned_page (int) ;
 char* page_to_ptr (struct snd_trident*,int ) ;

__attribute__((used)) static inline void *offset_ptr(struct snd_trident *trident, int offset)
{
 char *ptr;
 ptr = page_to_ptr(trident, get_aligned_page(offset));
 ptr += offset % ALIGN_PAGE_SIZE;
 return (void*)ptr;
}
