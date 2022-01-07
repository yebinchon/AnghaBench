
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 tomoyo_make_byte(const u8 c1, const u8 c2, const u8 c3)
{
 return ((c1 - '0') << 6) + ((c2 - '0') << 3) + (c3 - '0');
}
