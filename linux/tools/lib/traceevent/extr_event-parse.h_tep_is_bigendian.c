
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned int*,unsigned char*,int) ;

__attribute__((used)) static inline int tep_is_bigendian(void)
{
 unsigned char str[] = { 0x1, 0x2, 0x3, 0x4 };
 unsigned int val;

 memcpy(&val, str, 4);
 return val == 0x01020304;
}
