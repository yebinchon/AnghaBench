
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int sad_format(const u8 *sad)
{
 return ((sad[0] >> 0x3) & 0x1f);
}
