
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int dummy; } ;
struct hci_dev {struct l2cap_chan* smp_bredr_data; struct l2cap_chan* smp_data; int debugfs; int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_FORCE_BREDR_SMP ;
 scalar_t__ IS_ERR (struct l2cap_chan*) ;
 int L2CAP_CID_SMP ;
 int L2CAP_CID_SMP_BREDR ;
 int PTR_ERR (struct l2cap_chan*) ;
 scalar_t__ WARN_ON (struct l2cap_chan*) ;
 int debugfs_create_file (char*,int,int ,struct hci_dev*,int *) ;
 int force_bredr_smp_fops ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int le_max_key_size_fops ;
 int le_min_key_size_fops ;
 int lmp_le_capable (struct hci_dev*) ;
 int lmp_sc_capable (struct hci_dev*) ;
 struct l2cap_chan* smp_add_cid (struct hci_dev*,int ) ;
 int smp_del_chan (struct l2cap_chan*) ;

int smp_register(struct hci_dev *hdev)
{
 struct l2cap_chan *chan;

 BT_DBG("%s", hdev->name);




 if (!lmp_le_capable(hdev))
  return 0;

 if (WARN_ON(hdev->smp_data)) {
  chan = hdev->smp_data;
  hdev->smp_data = ((void*)0);
  smp_del_chan(chan);
 }

 chan = smp_add_cid(hdev, L2CAP_CID_SMP);
 if (IS_ERR(chan))
  return PTR_ERR(chan);

 hdev->smp_data = chan;

 debugfs_create_file("le_min_key_size", 0644, hdev->debugfs, hdev,
       &le_min_key_size_fops);
 debugfs_create_file("le_max_key_size", 0644, hdev->debugfs, hdev,
       &le_max_key_size_fops);
 if (!lmp_sc_capable(hdev)) {
  debugfs_create_file("force_bredr_smp", 0644, hdev->debugfs,
        hdev, &force_bredr_smp_fops);


  if (!hci_dev_test_flag(hdev, HCI_FORCE_BREDR_SMP))
   return 0;
 }

 if (WARN_ON(hdev->smp_bredr_data)) {
  chan = hdev->smp_bredr_data;
  hdev->smp_bredr_data = ((void*)0);
  smp_del_chan(chan);
 }

 chan = smp_add_cid(hdev, L2CAP_CID_SMP_BREDR);
 if (IS_ERR(chan)) {
  int err = PTR_ERR(chan);
  chan = hdev->smp_data;
  hdev->smp_data = ((void*)0);
  smp_del_chan(chan);
  return err;
 }

 hdev->smp_bredr_data = chan;

 return 0;
}
