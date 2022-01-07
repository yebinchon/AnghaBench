
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char __u8 ;



__attribute__((used)) static inline unsigned char fat_checksum(const __u8 *name)
{
 unsigned char s = name[0];
 s = (s<<7) + (s>>1) + name[1]; s = (s<<7) + (s>>1) + name[2];
 s = (s<<7) + (s>>1) + name[3]; s = (s<<7) + (s>>1) + name[4];
 s = (s<<7) + (s>>1) + name[5]; s = (s<<7) + (s>>1) + name[6];
 s = (s<<7) + (s>>1) + name[7]; s = (s<<7) + (s>>1) + name[8];
 s = (s<<7) + (s>>1) + name[9]; s = (s<<7) + (s>>1) + name[10];
 return s;
}
