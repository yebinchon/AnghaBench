
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BITS_PER_LONG ;
 int BUG_ON (int) ;
 size_t INT_MAX ;
 scalar_t__ bitmap_weight (unsigned long*,size_t) ;
 scalar_t__ hweight8 (unsigned char const) ;

size_t memweight(const void *ptr, size_t bytes)
{
 size_t ret = 0;
 size_t longs;
 const unsigned char *bitmap = ptr;

 for (; bytes > 0 && ((unsigned long)bitmap) % sizeof(long);
   bytes--, bitmap++)
  ret += hweight8(*bitmap);

 longs = bytes / sizeof(long);
 if (longs) {
  BUG_ON(longs >= INT_MAX / BITS_PER_LONG);
  ret += bitmap_weight((unsigned long *)bitmap,
    longs * BITS_PER_LONG);
  bytes -= longs * sizeof(long);
  bitmap += longs * sizeof(long);
 }





 for (; bytes > 0; bytes--, bitmap++)
  ret += hweight8(*bitmap);

 return ret;
}
