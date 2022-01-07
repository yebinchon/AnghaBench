
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int extract_bit(const u8 *data, size_t index)
{
 return !!(data[index / 8] & (1 << (7 - (index % 8))));
}
