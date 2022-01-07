
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int debugfs; scalar_t__ fw_info; scalar_t__ hw_info; int hw_error_code; int hci_rev; int hci_ver; int manufacturer; } ;


 int blacklist_fops ;
 int conn_info_max_age_fops ;
 int conn_info_min_age_fops ;
 int debugfs_create_file (char*,int,int ,struct hci_dev*,int *) ;
 int debugfs_create_u16 (char*,int,int ,int *) ;
 int debugfs_create_u8 (char*,int,int ,int *) ;
 int device_id_fops ;
 int device_list_fops ;
 int features_fops ;
 int firmware_info_fops ;
 int hardware_info_fops ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;
 scalar_t__ lmp_sc_capable (struct hci_dev*) ;
 scalar_t__ lmp_ssp_capable (struct hci_dev*) ;
 int remote_oob_fops ;
 int sc_only_mode_fops ;
 int use_debug_keys_fops ;
 int uuids_fops ;

void hci_debugfs_create_common(struct hci_dev *hdev)
{
 debugfs_create_file("features", 0444, hdev->debugfs, hdev,
       &features_fops);
 debugfs_create_u16("manufacturer", 0444, hdev->debugfs,
      &hdev->manufacturer);
 debugfs_create_u8("hci_version", 0444, hdev->debugfs, &hdev->hci_ver);
 debugfs_create_u16("hci_revision", 0444, hdev->debugfs, &hdev->hci_rev);
 debugfs_create_u8("hardware_error", 0444, hdev->debugfs,
     &hdev->hw_error_code);
 debugfs_create_file("device_id", 0444, hdev->debugfs, hdev,
       &device_id_fops);

 debugfs_create_file("device_list", 0444, hdev->debugfs, hdev,
       &device_list_fops);
 debugfs_create_file("blacklist", 0444, hdev->debugfs, hdev,
       &blacklist_fops);
 debugfs_create_file("uuids", 0444, hdev->debugfs, hdev, &uuids_fops);
 debugfs_create_file("remote_oob", 0400, hdev->debugfs, hdev,
       &remote_oob_fops);

 debugfs_create_file("conn_info_min_age", 0644, hdev->debugfs, hdev,
       &conn_info_min_age_fops);
 debugfs_create_file("conn_info_max_age", 0644, hdev->debugfs, hdev,
       &conn_info_max_age_fops);

 if (lmp_ssp_capable(hdev) || lmp_le_capable(hdev))
  debugfs_create_file("use_debug_keys", 0444, hdev->debugfs,
        hdev, &use_debug_keys_fops);

 if (lmp_sc_capable(hdev) || lmp_le_capable(hdev))
  debugfs_create_file("sc_only_mode", 0444, hdev->debugfs,
        hdev, &sc_only_mode_fops);

 if (hdev->hw_info)
  debugfs_create_file("hardware_info", 0444, hdev->debugfs,
        hdev, &hardware_info_fops);

 if (hdev->fw_info)
  debugfs_create_file("firmware_info", 0444, hdev->debugfs,
        hdev, &firmware_info_fops);
}
