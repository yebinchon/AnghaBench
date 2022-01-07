
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_aligned(const void *base, size_t size, unsigned char align)
{
 unsigned char lsbits = (unsigned char)size;

 (void)base;

 lsbits |= (unsigned char)(uintptr_t)base;

 return (lsbits & (align - 1)) == 0;
}
