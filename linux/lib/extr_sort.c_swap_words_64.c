
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static void swap_words_64(void *a, void *b, size_t n)
{
 do {






  u32 t = *(u32 *)(a + (n -= 4));
  *(u32 *)(a + n) = *(u32 *)(b + n);
  *(u32 *)(b + n) = t;

  t = *(u32 *)(a + (n -= 4));
  *(u32 *)(a + n) = *(u32 *)(b + n);
  *(u32 *)(b + n) = t;

 } while (n);
}
