
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline bool has_uuid(u8 *uuid, u16 uuid_count, u8 (*uuids)[16])
{
 int i;

 for (i = 0; i < uuid_count; i++) {
  if (!memcmp(uuid, uuids[i], 16))
   return 1;
 }

 return 0;
}
