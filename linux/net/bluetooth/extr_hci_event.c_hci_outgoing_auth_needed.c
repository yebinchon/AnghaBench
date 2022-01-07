
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; scalar_t__ pending_sec_level; int auth_type; int out; } ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_SECURITY_FIPS ;
 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 scalar_t__ BT_SECURITY_SDP ;
 int hci_conn_ssp_enabled (struct hci_conn*) ;

__attribute__((used)) static int hci_outgoing_auth_needed(struct hci_dev *hdev,
        struct hci_conn *conn)
{
 if (conn->state != BT_CONFIG || !conn->out)
  return 0;

 if (conn->pending_sec_level == BT_SECURITY_SDP)
  return 0;





 if (!hci_conn_ssp_enabled(conn) && !(conn->auth_type & 0x01) &&
     conn->pending_sec_level != BT_SECURITY_FIPS &&
     conn->pending_sec_level != BT_SECURITY_HIGH &&
     conn->pending_sec_level != BT_SECURITY_MEDIUM)
  return 0;

 return 1;
}
