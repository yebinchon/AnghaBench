
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int log2(unsigned int v)
{
 unsigned int r;
 unsigned int shift;

 r = (v > 0xFFFF) << 4; v >>= r;
 shift = (v > 0xFF) << 3; v >>= shift; r |= shift;
 shift = (v > 0xF) << 2; v >>= shift; r |= shift;
 shift = (v > 0x3) << 1; v >>= shift; r |= shift;
 r |= (v >> 1);
 return r;
}
