
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int sad_max_channels(const u8 *sad)
{
 return 1 + (sad[0] & 7);
}
