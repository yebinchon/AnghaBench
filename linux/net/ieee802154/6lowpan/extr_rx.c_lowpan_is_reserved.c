
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline bool lowpan_is_reserved(u8 dispatch)
{
 return ((dispatch >= 0x44 && dispatch <= 0x4F) ||
  (dispatch >= 0x51 && dispatch <= 0x5F) ||
  (dispatch >= 0xc8 && dispatch <= 0xdf) ||
  (dispatch >= 0xe8 && dispatch <= 0xff));
}
