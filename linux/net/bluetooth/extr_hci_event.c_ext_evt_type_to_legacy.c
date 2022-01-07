
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BT_ERR_RATELIMITED (char*,int) ;
 int LE_ADV_DIRECT_IND ;
 int LE_ADV_IND ;
 int LE_ADV_INVALID ;
 int LE_ADV_NONCONN_IND ;
 int LE_ADV_SCAN_IND ;
 int LE_ADV_SCAN_RSP ;
 int LE_EXT_ADV_CONN_IND ;
 int LE_EXT_ADV_DIRECT_IND ;
 int LE_EXT_ADV_LEGACY_PDU ;
 int LE_EXT_ADV_NON_CONN_IND ;
 int LE_EXT_ADV_SCAN_IND ;
 int LE_EXT_ADV_SCAN_RSP ;







__attribute__((used)) static u8 ext_evt_type_to_legacy(u16 evt_type)
{
 if (evt_type & LE_EXT_ADV_LEGACY_PDU) {
  switch (evt_type) {
  case 132:
   return LE_ADV_IND;
  case 133:
   return LE_ADV_DIRECT_IND;
  case 131:
   return LE_ADV_SCAN_IND;
  case 130:
   return LE_ADV_NONCONN_IND;
  case 129:
  case 128:
   return LE_ADV_SCAN_RSP;
  }

  BT_ERR_RATELIMITED("Unknown advertising packet type: 0x%02x",
       evt_type);

  return LE_ADV_INVALID;
 }

 if (evt_type & LE_EXT_ADV_CONN_IND) {
  if (evt_type & LE_EXT_ADV_DIRECT_IND)
   return LE_ADV_DIRECT_IND;

  return LE_ADV_IND;
 }

 if (evt_type & LE_EXT_ADV_SCAN_RSP)
  return LE_ADV_SCAN_RSP;

 if (evt_type & LE_EXT_ADV_SCAN_IND)
  return LE_ADV_SCAN_IND;

 if (evt_type == LE_EXT_ADV_NON_CONN_IND ||
     evt_type & LE_EXT_ADV_DIRECT_IND)
  return LE_ADV_NONCONN_IND;

 BT_ERR_RATELIMITED("Unknown advertising packet type: 0x%02x",
       evt_type);

 return LE_ADV_INVALID;
}
