
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_rp_pair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int index; int sk; struct hci_conn* user_data; } ;
struct hci_conn {int flags; int * disconn_cfm_cb; int * security_cfm_cb; int * connect_cfm_cb; int dst_type; int type; int dst; } ;
typedef int rp ;


 int HCI_CONN_PARAM_REMOVAL_PEND ;
 int MGMT_OP_PAIR_DEVICE ;
 int bacpy (int *,int *) ;
 int clear_bit (int ,int *) ;
 int hci_conn_drop (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int link_to_bdaddr (int ,int ) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,struct mgmt_rp_pair_device*,int) ;

__attribute__((used)) static int pairing_complete(struct mgmt_pending_cmd *cmd, u8 status)
{
 struct mgmt_rp_pair_device rp;
 struct hci_conn *conn = cmd->user_data;
 int err;

 bacpy(&rp.addr.bdaddr, &conn->dst);
 rp.addr.type = link_to_bdaddr(conn->type, conn->dst_type);

 err = mgmt_cmd_complete(cmd->sk, cmd->index, MGMT_OP_PAIR_DEVICE,
    status, &rp, sizeof(rp));


 conn->connect_cfm_cb = ((void*)0);
 conn->security_cfm_cb = ((void*)0);
 conn->disconn_cfm_cb = ((void*)0);

 hci_conn_drop(conn);




 clear_bit(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags);

 hci_conn_put(conn);

 return err;
}
