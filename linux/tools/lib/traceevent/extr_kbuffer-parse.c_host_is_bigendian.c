
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int host_is_bigendian(void)
{
 unsigned char str[] = { 0x1, 0x2, 0x3, 0x4 };
 unsigned int *ptr;

 ptr = (unsigned int *)str;
 return *ptr == 0x01020304;
}
