
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int debugfs; } ;


 int auto_accept_delay_fops ;
 int debugfs_create_file (char*,int,int ,struct hci_dev*,int *) ;
 int dev_class_fops ;
 int idle_timeout_fops ;
 int inquiry_cache_fops ;
 int link_keys_fops ;
 scalar_t__ lmp_sniff_capable (struct hci_dev*) ;
 scalar_t__ lmp_ssp_capable (struct hci_dev*) ;
 int min_encrypt_key_size_fops ;
 int sniff_max_interval_fops ;
 int sniff_min_interval_fops ;
 int ssp_debug_mode_fops ;
 int voice_setting_fops ;

void hci_debugfs_create_bredr(struct hci_dev *hdev)
{
 debugfs_create_file("inquiry_cache", 0444, hdev->debugfs, hdev,
       &inquiry_cache_fops);
 debugfs_create_file("link_keys", 0400, hdev->debugfs, hdev,
       &link_keys_fops);
 debugfs_create_file("dev_class", 0444, hdev->debugfs, hdev,
       &dev_class_fops);
 debugfs_create_file("voice_setting", 0444, hdev->debugfs, hdev,
       &voice_setting_fops);

 if (lmp_ssp_capable(hdev)) {
  debugfs_create_file("ssp_debug_mode", 0444, hdev->debugfs,
        hdev, &ssp_debug_mode_fops);
  debugfs_create_file("min_encrypt_key_size", 0644, hdev->debugfs,
        hdev, &min_encrypt_key_size_fops);
  debugfs_create_file("auto_accept_delay", 0644, hdev->debugfs,
        hdev, &auto_accept_delay_fops);
 }

 if (lmp_sniff_capable(hdev)) {
  debugfs_create_file("idle_timeout", 0644, hdev->debugfs,
        hdev, &idle_timeout_fops);
  debugfs_create_file("sniff_min_interval", 0644, hdev->debugfs,
        hdev, &sniff_min_interval_fops);
  debugfs_create_file("sniff_max_interval", 0644, hdev->debugfs,
        hdev, &sniff_max_interval_fops);
 }
}
