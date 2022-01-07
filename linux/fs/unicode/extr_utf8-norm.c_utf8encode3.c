
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
utf8encode3(char *str, unsigned int val)
{
 str[2] = (val & 0x3F) | 0x80;
 val >>= 6;
 str[1] = (val & 0x3F) | 0x80;
 val >>= 6;
 str[0] = val | 0xE0;

 return 3;
}
