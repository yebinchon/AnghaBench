
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int ) ;
 int PMSG_NAME ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 int pmsg_class ;
 int pmsg_major ;
 int unregister_chrdev (int ,int ) ;

void pstore_unregister_pmsg(void)
{
 device_destroy(pmsg_class, MKDEV(pmsg_major, 0));
 class_destroy(pmsg_class);
 unregister_chrdev(pmsg_major, PMSG_NAME);
}
