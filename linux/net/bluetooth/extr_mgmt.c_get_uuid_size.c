
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int bluetooth_base_uuid ;
 int get_unaligned_le32 (int const*) ;
 scalar_t__ memcmp (int const*,int ,int) ;

__attribute__((used)) static u8 get_uuid_size(const u8 *uuid)
{
 u32 val;

 if (memcmp(uuid, bluetooth_base_uuid, 12))
  return 128;

 val = get_unaligned_le32(&uuid[12]);
 if (val > 0xffff)
  return 32;

 return 16;
}
