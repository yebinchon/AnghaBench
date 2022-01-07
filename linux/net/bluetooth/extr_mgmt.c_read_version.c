
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_version {int dummy; } ;
struct hci_dev {int dummy; } ;
typedef int rp ;


 int BT_DBG (char*,struct sock*) ;
 int MGMT_INDEX_NONE ;
 int MGMT_OP_READ_VERSION ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_read_version*,int) ;
 int mgmt_fill_version_info (struct mgmt_rp_read_version*) ;

__attribute__((used)) static int read_version(struct sock *sk, struct hci_dev *hdev, void *data,
   u16 data_len)
{
 struct mgmt_rp_read_version rp;

 BT_DBG("sock %p", sk);

 mgmt_fill_version_info(&rp);

 return mgmt_cmd_complete(sk, MGMT_INDEX_NONE, MGMT_OP_READ_VERSION, 0,
     &rp, sizeof(rp));
}
