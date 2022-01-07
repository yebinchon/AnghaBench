
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;


 int __test_release_all_firmware () ;
 int kfree_const (int *) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static void __test_firmware_config_free(void)
{
 __test_release_all_firmware();
 kfree_const(test_fw_config->name);
 test_fw_config->name = ((void*)0);
}
