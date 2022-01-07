
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GOSSIP_DEV_DEBUG ;
 int ORANGEFS_REQDEVICE_NAME ;
 int gossip_debug (int ,char*,int ,...) ;
 scalar_t__ orangefs_dev_major ;
 int orangefs_devreq_file_operations ;
 scalar_t__ register_chrdev (int ,int ,int *) ;

int orangefs_dev_init(void)
{

 orangefs_dev_major = register_chrdev(0,
       ORANGEFS_REQDEVICE_NAME,
       &orangefs_devreq_file_operations);
 if (orangefs_dev_major < 0) {
  gossip_debug(GOSSIP_DEV_DEBUG,
        "Failed to register /dev/%s (error %d)\n",
        ORANGEFS_REQDEVICE_NAME, orangefs_dev_major);
  return orangefs_dev_major;
 }

 gossip_debug(GOSSIP_DEV_DEBUG,
       "*** /dev/%s character device registered ***\n",
       ORANGEFS_REQDEVICE_NAME);
 gossip_debug(GOSSIP_DEV_DEBUG, "'mknod /dev/%s c %d 0'.\n",
       ORANGEFS_REQDEVICE_NAME, orangefs_dev_major);
 return 0;
}
