
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int sad_sample_bits_lpcm(const u8 *sad)
{
 return (sad[2] & 7);
}
