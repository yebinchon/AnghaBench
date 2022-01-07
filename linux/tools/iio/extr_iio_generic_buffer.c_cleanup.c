
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AUTOCHANNELS_ACTIVE ;
 scalar_t__ AUTOCHANNELS_DISABLED ;
 scalar_t__ autochannels ;
 scalar_t__ buf_dir_name ;
 int current_trigger_set ;
 scalar_t__ dev_dir_name ;
 int enable_disable_all_channels (scalar_t__,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int) ;
 int write_sysfs_int (char*,scalar_t__,int ) ;
 int write_sysfs_string (char*,scalar_t__,char*) ;

void cleanup(void)
{
 int ret;


 if (dev_dir_name && current_trigger_set) {

  ret = write_sysfs_string("trigger/current_trigger",
      dev_dir_name, "NULL");
  if (ret < 0)
   fprintf(stderr, "Failed to disable trigger: %s\n",
    strerror(-ret));
  current_trigger_set = 0;
 }


 if (buf_dir_name) {
  ret = write_sysfs_int("enable", buf_dir_name, 0);
  if (ret < 0)
   fprintf(stderr, "Failed to disable buffer: %s\n",
    strerror(-ret));
 }


 if (dev_dir_name && autochannels == AUTOCHANNELS_ACTIVE) {
  ret = enable_disable_all_channels(dev_dir_name, 0);
  if (ret)
   fprintf(stderr, "Failed to disable all channels\n");
  autochannels = AUTOCHANNELS_DISABLED;
 }
}
