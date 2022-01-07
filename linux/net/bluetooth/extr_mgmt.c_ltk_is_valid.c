
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
struct TYPE_4__ {int type; TYPE_1__ bdaddr; } ;
struct mgmt_ltk_info {int master; TYPE_2__ addr; } ;





__attribute__((used)) static bool ltk_is_valid(struct mgmt_ltk_info *key)
{
 if (key->master != 0x00 && key->master != 0x01)
  return 0;

 switch (key->addr.type) {
 case 129:
  return 1;

 case 128:

  if ((key->addr.bdaddr.b[5] & 0xc0) != 0xc0)
   return 0;
  return 1;
 }

 return 0;
}
