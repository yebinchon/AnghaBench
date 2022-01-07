
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int utf32valid(unsigned int unichar)
{
 return unichar < 0x110000;
}
