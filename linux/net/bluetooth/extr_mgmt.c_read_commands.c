
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_commands {int * opcodes; void* num_events; void* num_commands; } ;
struct hci_dev {int dummy; } ;
typedef int __le16 ;


 int ARRAY_SIZE (int *) ;
 int BT_DBG (char*,struct sock*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_SOCK_TRUSTED ;
 int MGMT_INDEX_NONE ;
 int MGMT_OP_READ_COMMANDS ;
 void* cpu_to_le16 (int) ;
 scalar_t__ hci_sock_test_flag (struct sock*,int ) ;
 int kfree (struct mgmt_rp_read_commands*) ;
 struct mgmt_rp_read_commands* kmalloc (size_t,int ) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_read_commands*,size_t) ;
 int * mgmt_commands ;
 int * mgmt_events ;
 int * mgmt_untrusted_commands ;
 int * mgmt_untrusted_events ;
 int put_unaligned_le16 (int ,int *) ;

__attribute__((used)) static int read_commands(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 data_len)
{
 struct mgmt_rp_read_commands *rp;
 u16 num_commands, num_events;
 size_t rp_size;
 int i, err;

 BT_DBG("sock %p", sk);

 if (hci_sock_test_flag(sk, HCI_SOCK_TRUSTED)) {
  num_commands = ARRAY_SIZE(mgmt_commands);
  num_events = ARRAY_SIZE(mgmt_events);
 } else {
  num_commands = ARRAY_SIZE(mgmt_untrusted_commands);
  num_events = ARRAY_SIZE(mgmt_untrusted_events);
 }

 rp_size = sizeof(*rp) + ((num_commands + num_events) * sizeof(u16));

 rp = kmalloc(rp_size, GFP_KERNEL);
 if (!rp)
  return -ENOMEM;

 rp->num_commands = cpu_to_le16(num_commands);
 rp->num_events = cpu_to_le16(num_events);

 if (hci_sock_test_flag(sk, HCI_SOCK_TRUSTED)) {
  __le16 *opcode = rp->opcodes;

  for (i = 0; i < num_commands; i++, opcode++)
   put_unaligned_le16(mgmt_commands[i], opcode);

  for (i = 0; i < num_events; i++, opcode++)
   put_unaligned_le16(mgmt_events[i], opcode);
 } else {
  __le16 *opcode = rp->opcodes;

  for (i = 0; i < num_commands; i++, opcode++)
   put_unaligned_le16(mgmt_untrusted_commands[i], opcode);

  for (i = 0; i < num_events; i++, opcode++)
   put_unaligned_le16(mgmt_untrusted_events[i], opcode);
 }

 err = mgmt_cmd_complete(sk, MGMT_INDEX_NONE, MGMT_OP_READ_COMMANDS, 0,
    rp, rp_size);
 kfree(rp);

 return err;
}
