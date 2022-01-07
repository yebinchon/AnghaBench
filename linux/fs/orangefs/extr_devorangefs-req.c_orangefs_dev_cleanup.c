
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GOSSIP_DEV_DEBUG ;
 int ORANGEFS_REQDEVICE_NAME ;
 int gossip_debug (int ,char*,int ) ;
 int orangefs_dev_major ;
 int unregister_chrdev (int ,int ) ;

void orangefs_dev_cleanup(void)
{
 unregister_chrdev(orangefs_dev_major, ORANGEFS_REQDEVICE_NAME);
 gossip_debug(GOSSIP_DEV_DEBUG,
       "*** /dev/%s character device unregistered ***\n",
       ORANGEFS_REQDEVICE_NAME);
}
