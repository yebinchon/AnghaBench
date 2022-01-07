
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
 scalar_t__* bluetooth_base_uuid ;
 int has_uuid (scalar_t__*,scalar_t__,scalar_t__**) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static bool eir_has_uuids(u8 *eir, u16 eir_len, u16 uuid_count, u8 (*uuids)[16])
{
 u16 parsed = 0;

 while (parsed < eir_len) {
  u8 field_len = eir[0];
  u8 uuid[16];
  int i;

  if (field_len == 0)
   break;

  if (eir_len - parsed < field_len + 1)
   break;

  switch (eir[1]) {
  case 131:
  case 130:
   for (i = 0; i + 3 <= field_len; i += 2) {
    memcpy(uuid, bluetooth_base_uuid, 16);
    uuid[13] = eir[i + 3];
    uuid[12] = eir[i + 2];
    if (has_uuid(uuid, uuid_count, uuids))
     return 1;
   }
   break;
  case 129:
  case 128:
   for (i = 0; i + 5 <= field_len; i += 4) {
    memcpy(uuid, bluetooth_base_uuid, 16);
    uuid[15] = eir[i + 5];
    uuid[14] = eir[i + 4];
    uuid[13] = eir[i + 3];
    uuid[12] = eir[i + 2];
    if (has_uuid(uuid, uuid_count, uuids))
     return 1;
   }
   break;
  case 133:
  case 132:
   for (i = 0; i + 17 <= field_len; i += 16) {
    memcpy(uuid, eir + i + 2, 16);
    if (has_uuid(uuid, uuid_count, uuids))
     return 1;
   }
   break;
  }

  parsed += field_len + 1;
  eir += field_len + 1;
 }

 return 0;
}
