
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {unsigned char* b; unsigned short us; } ;



__attribute__((used)) static inline unsigned short
get_unaligned16(const unsigned short *p)
{
 union uu mm;
 unsigned char *b = (unsigned char *)p;

 mm.b[0] = b[0];
 mm.b[1] = b[1];
 return mm.us;
}
