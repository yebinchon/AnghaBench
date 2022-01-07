
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ type; scalar_t__ key_type; int pin_length; int enc_key_size; int flags; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int BT_SECURITY_FIPS ;
 int BT_SECURITY_HIGH ;
 int BT_SECURITY_LOW ;
 int BT_SECURITY_MEDIUM ;
 int BT_SECURITY_SDP ;
 int HCI_CONN_AUTH ;
 int HCI_CONN_AUTH_INITIATOR ;
 int HCI_CONN_ENCRYPT ;
 int HCI_CONN_ENCRYPT_PEND ;
 scalar_t__ HCI_LK_AUTH_COMBINATION_P192 ;
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ;
 scalar_t__ HCI_LK_COMBINATION ;
 scalar_t__ HCI_LK_UNAUTH_COMBINATION_P192 ;
 scalar_t__ HCI_LK_UNAUTH_COMBINATION_P256 ;
 scalar_t__ LE_LINK ;
 int hci_conn_auth (struct hci_conn*,int ,int ) ;
 int hci_conn_encrypt (struct hci_conn*) ;
 int hci_conn_ssp_enabled (struct hci_conn*) ;
 int set_bit (int ,int *) ;
 int smp_conn_security (struct hci_conn*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int hci_conn_security(struct hci_conn *conn, __u8 sec_level, __u8 auth_type,
        bool initiator)
{
 BT_DBG("hcon %p", conn);

 if (conn->type == LE_LINK)
  return smp_conn_security(conn, sec_level);


 if (sec_level == BT_SECURITY_SDP)
  return 1;



 if (sec_level == BT_SECURITY_LOW && !hci_conn_ssp_enabled(conn))
  return 1;


 if (!test_bit(HCI_CONN_AUTH, &conn->flags))
  goto auth;



 if (conn->key_type == HCI_LK_AUTH_COMBINATION_P256 &&
     sec_level == BT_SECURITY_FIPS)
  goto encrypt;



 if ((conn->key_type == HCI_LK_AUTH_COMBINATION_P192 ||
      conn->key_type == HCI_LK_AUTH_COMBINATION_P256) &&
     sec_level == BT_SECURITY_HIGH)
  goto encrypt;



 if ((conn->key_type == HCI_LK_UNAUTH_COMBINATION_P192 ||
      conn->key_type == HCI_LK_UNAUTH_COMBINATION_P256) &&
     (sec_level == BT_SECURITY_MEDIUM || sec_level == BT_SECURITY_LOW))
  goto encrypt;





 if (conn->key_type == HCI_LK_COMBINATION &&
     (sec_level == BT_SECURITY_MEDIUM || sec_level == BT_SECURITY_LOW ||
      conn->pin_length == 16))
  goto encrypt;

auth:
 if (test_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags))
  return 0;

 if (initiator)
  set_bit(HCI_CONN_AUTH_INITIATOR, &conn->flags);

 if (!hci_conn_auth(conn, sec_level, auth_type))
  return 0;

encrypt:
 if (test_bit(HCI_CONN_ENCRYPT, &conn->flags)) {



  if (!conn->enc_key_size)
   return 0;


  return 1;
 }

 hci_conn_encrypt(conn);
 return 0;
}
