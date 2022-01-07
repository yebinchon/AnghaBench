
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ethtool_tunable {int id; int len; int type_id; } ;


 int EINVAL ;


 int ETHTOOL_TUNABLE_U16 ;
 int ETHTOOL_TUNABLE_U32 ;


__attribute__((used)) static int ethtool_tunable_valid(const struct ethtool_tunable *tuna)
{
 switch (tuna->id) {
 case 129:
 case 128:
  if (tuna->len != sizeof(u32) ||
      tuna->type_id != ETHTOOL_TUNABLE_U32)
   return -EINVAL;
  break;
 case 130:
  if (tuna->len != sizeof(u16) ||
      tuna->type_id != ETHTOOL_TUNABLE_U16)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
