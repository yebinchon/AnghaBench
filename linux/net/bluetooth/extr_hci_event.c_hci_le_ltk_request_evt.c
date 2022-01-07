
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_ltk {scalar_t__ ediv; scalar_t__ rand; int enc_size; scalar_t__ type; int list; int val; } ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_ltk_req {scalar_t__ ediv; scalar_t__ rand; int handle; } ;
struct hci_dev {int name; } ;
struct hci_cp_le_ltk_reply {int handle; int ltk; } ;
struct hci_cp_le_ltk_neg_reply {int handle; int ltk; } ;
struct hci_conn {int enc_key_size; int flags; int pending_sec_level; int handle; int role; int dst_type; int dst; } ;
typedef int neg ;
typedef int cp ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_STK_ENCRYPT ;
 int HCI_OP_LE_LTK_NEG_REPLY ;
 int HCI_OP_LE_LTK_REPLY ;
 scalar_t__ SMP_STK ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 int cpu_to_le16 (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct smp_ltk* hci_find_ltk (struct hci_dev*,int *,int ,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_le_ltk_reply*) ;
 int kfree_rcu (struct smp_ltk*,int ) ;
 int list_del_rcu (int *) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int rcu ;
 int set_bit (int ,int *) ;
 scalar_t__ smp_ltk_is_sc (struct smp_ltk*) ;
 int smp_ltk_sec_level (struct smp_ltk*) ;

__attribute__((used)) static void hci_le_ltk_request_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_le_ltk_req *ev = (void *) skb->data;
 struct hci_cp_le_ltk_reply cp;
 struct hci_cp_le_ltk_neg_reply neg;
 struct hci_conn *conn;
 struct smp_ltk *ltk;

 BT_DBG("%s handle 0x%4.4x", hdev->name, __le16_to_cpu(ev->handle));

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn == ((void*)0))
  goto not_found;

 ltk = hci_find_ltk(hdev, &conn->dst, conn->dst_type, conn->role);
 if (!ltk)
  goto not_found;

 if (smp_ltk_is_sc(ltk)) {

  if (ev->ediv || ev->rand)
   goto not_found;
 } else {

  if (ev->ediv != ltk->ediv || ev->rand != ltk->rand)
   goto not_found;
 }

 memcpy(cp.ltk, ltk->val, ltk->enc_size);
 memset(cp.ltk + ltk->enc_size, 0, sizeof(cp.ltk) - ltk->enc_size);
 cp.handle = cpu_to_le16(conn->handle);

 conn->pending_sec_level = smp_ltk_sec_level(ltk);

 conn->enc_key_size = ltk->enc_size;

 hci_send_cmd(hdev, HCI_OP_LE_LTK_REPLY, sizeof(cp), &cp);







 if (ltk->type == SMP_STK) {
  set_bit(HCI_CONN_STK_ENCRYPT, &conn->flags);
  list_del_rcu(&ltk->list);
  kfree_rcu(ltk, rcu);
 } else {
  clear_bit(HCI_CONN_STK_ENCRYPT, &conn->flags);
 }

 hci_dev_unlock(hdev);

 return;

not_found:
 neg.handle = ev->handle;
 hci_send_cmd(hdev, HCI_OP_LE_LTK_NEG_REPLY, sizeof(neg), &neg);
 hci_dev_unlock(hdev);
}
