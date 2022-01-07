
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int debugfs; scalar_t__ set_diag; } ;


 int debugfs_create_file (char*,int,int ,struct hci_dev*,int *) ;
 int dut_mode_fops ;
 int vendor_diag_fops ;

__attribute__((used)) static void hci_debugfs_create_basic(struct hci_dev *hdev)
{
 debugfs_create_file("dut_mode", 0644, hdev->debugfs, hdev,
       &dut_mode_fops);

 if (hdev->set_diag)
  debugfs_create_file("vendor_diag", 0644, hdev->debugfs, hdev,
        &vendor_diag_fops);
}
