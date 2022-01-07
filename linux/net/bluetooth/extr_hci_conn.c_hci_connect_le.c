
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct smp_irk {int rpa; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ le_scan_type; int le_supv_timeout; int le_conn_latency; int le_conn_max_interval; int le_conn_min_interval; } ;
struct hci_conn_params {int supervision_timeout; int conn_latency; int conn_max_interval; int conn_min_interval; } ;
struct hci_conn {scalar_t__ role; int le_supv_timeout; int le_conn_latency; int le_conn_max_interval; int le_conn_min_interval; void* dst_type; int dst; int conn_timeout; int sec_level; void* pending_sec_level; int flags; } ;
typedef int enable ;
typedef int bdaddr_t ;


 void* ADDR_LE_DEV_RANDOM ;
 int BDADDR_ANY ;
 int BT_SECURITY_LOW ;
 int EBUSY ;
 int ECONNREFUSED ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct hci_conn* ERR_PTR (int) ;
 int HCI_CONN_SCANNING ;
 int HCI_LE_ADV ;
 int HCI_LE_ENABLED ;
 int HCI_LE_SCAN ;
 int HCI_LE_SCAN_INTERRUPTED ;
 int HCI_OP_LE_SET_ADV_ENABLE ;
 scalar_t__ HCI_ROLE_SLAVE ;
 int LE_LINK ;
 scalar_t__ LE_SCAN_ACTIVE ;
 scalar_t__ bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 int create_le_conn_complete ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int ,int *,void*) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,int *,void*) ;
 int hci_conn_hold (struct hci_conn*) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,void*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 struct smp_irk* hci_find_irk_by_addr (struct hci_dev*,int *,void*) ;
 scalar_t__ hci_lookup_le_connect (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,void**) ;
 int hci_req_add_le_create_conn (struct hci_request*,struct hci_conn*,int *) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 int hci_req_directed_advertising (struct hci_request*,struct hci_conn*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_purge (struct hci_request*) ;
 int hci_req_run (struct hci_request*,int ) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;
 int test_bit (int ,int *) ;

struct hci_conn *hci_connect_le(struct hci_dev *hdev, bdaddr_t *dst,
    u8 dst_type, u8 sec_level, u16 conn_timeout,
    u8 role, bdaddr_t *direct_rpa)
{
 struct hci_conn_params *params;
 struct hci_conn *conn;
 struct smp_irk *irk;
 struct hci_request req;
 int err;


 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED)) {
  if (lmp_le_capable(hdev))
   return ERR_PTR(-ECONNREFUSED);

  return ERR_PTR(-EOPNOTSUPP);
 }




 if (hci_lookup_le_connect(hdev))
  return ERR_PTR(-EBUSY);






 conn = hci_conn_hash_lookup_le(hdev, dst, dst_type);
 if (conn && !test_bit(HCI_CONN_SCANNING, &conn->flags)) {
  return ERR_PTR(-EBUSY);
 }
 irk = hci_find_irk_by_addr(hdev, dst, dst_type);
 if (irk && bacmp(&irk->rpa, BDADDR_ANY)) {
  dst = &irk->rpa;
  dst_type = ADDR_LE_DEV_RANDOM;
 }

 if (conn) {
  bacpy(&conn->dst, dst);
 } else {
  conn = hci_conn_add(hdev, LE_LINK, dst, role);
  if (!conn)
   return ERR_PTR(-ENOMEM);
  hci_conn_hold(conn);
  conn->pending_sec_level = sec_level;
 }

 conn->dst_type = dst_type;
 conn->sec_level = BT_SECURITY_LOW;
 conn->conn_timeout = conn_timeout;

 hci_req_init(&req, hdev);







 if (hci_dev_test_flag(hdev, HCI_LE_ADV)) {
  u8 enable = 0x00;
  hci_req_add(&req, HCI_OP_LE_SET_ADV_ENABLE, sizeof(enable),
       &enable);
 }


 if (conn->role == HCI_ROLE_SLAVE) {



  if (hci_dev_test_flag(hdev, HCI_LE_SCAN) &&
      hdev->le_scan_type == LE_SCAN_ACTIVE) {
   hci_req_purge(&req);
   hci_conn_del(conn);
   return ERR_PTR(-EBUSY);
  }

  hci_req_directed_advertising(&req, conn);
  goto create_conn;
 }

 params = hci_conn_params_lookup(hdev, &conn->dst, conn->dst_type);
 if (params) {
  conn->le_conn_min_interval = params->conn_min_interval;
  conn->le_conn_max_interval = params->conn_max_interval;
  conn->le_conn_latency = params->conn_latency;
  conn->le_supv_timeout = params->supervision_timeout;
 } else {
  conn->le_conn_min_interval = hdev->le_conn_min_interval;
  conn->le_conn_max_interval = hdev->le_conn_max_interval;
  conn->le_conn_latency = hdev->le_conn_latency;
  conn->le_supv_timeout = hdev->le_supv_timeout;
 }







 if (hci_dev_test_flag(hdev, HCI_LE_SCAN)) {
  hci_req_add_le_scan_disable(&req);
  hci_dev_set_flag(hdev, HCI_LE_SCAN_INTERRUPTED);
 }

 hci_req_add_le_create_conn(&req, conn, direct_rpa);

create_conn:
 err = hci_req_run(&req, create_le_conn_complete);
 if (err) {
  hci_conn_del(conn);
  return ERR_PTR(err);
 }

 return conn;
}
