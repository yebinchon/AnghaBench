
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;



__attribute__((used)) static inline bool
nft_bitmap_active(const u8 *bitmap, u32 idx, u32 off, u8 genmask)
{
 return (bitmap[idx] & (0x3 << off)) & (genmask << off);
}
