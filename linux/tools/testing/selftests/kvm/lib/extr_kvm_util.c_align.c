
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int,char*,size_t) ;

__attribute__((used)) static void *align(void *x, size_t size)
{
 size_t mask = size - 1;
 TEST_ASSERT(size != 0 && !(size & (size - 1)),
      "size not a power of 2: %lu", size);
 return (void *) (((size_t) x + mask) & ~mask);
}
