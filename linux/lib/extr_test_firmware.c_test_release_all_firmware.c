
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __test_release_all_firmware () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_fw_mutex ;

__attribute__((used)) static void test_release_all_firmware(void)
{
 mutex_lock(&test_fw_mutex);
 __test_release_all_firmware();
 mutex_unlock(&test_fw_mutex);
}
