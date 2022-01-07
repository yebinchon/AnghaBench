
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ sec_level; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 scalar_t__ BT_SECURITY_FIPS ;
 scalar_t__ BT_SECURITY_HIGH ;

int hci_conn_check_secure(struct hci_conn *conn, __u8 sec_level)
{
 BT_DBG("hcon %p", conn);


 if (sec_level != BT_SECURITY_HIGH && sec_level != BT_SECURITY_FIPS)
  return 1;


 if (conn->sec_level == BT_SECURITY_HIGH ||
     conn->sec_level == BT_SECURITY_FIPS)
  return 1;


 return 0;
}
