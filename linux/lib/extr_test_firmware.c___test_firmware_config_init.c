
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int send_uevent; int into_buf; int sync_direct; int * reqs; scalar_t__ test_result; int req_firmware; int num_requests; int name; } ;


 int GFP_KERNEL ;
 int TEST_FIRMWARE_NAME ;
 int TEST_FIRMWARE_NUM_REQS ;
 int __kstrncpy (int *,int ,int ,int ) ;
 int __test_firmware_config_free () ;
 int request_firmware ;
 int strlen (int ) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static int __test_firmware_config_init(void)
{
 int ret;

 ret = __kstrncpy(&test_fw_config->name, TEST_FIRMWARE_NAME,
    strlen(TEST_FIRMWARE_NAME), GFP_KERNEL);
 if (ret < 0)
  goto out;

 test_fw_config->num_requests = TEST_FIRMWARE_NUM_REQS;
 test_fw_config->send_uevent = 1;
 test_fw_config->into_buf = 0;
 test_fw_config->sync_direct = 0;
 test_fw_config->req_firmware = request_firmware;
 test_fw_config->test_result = 0;
 test_fw_config->reqs = ((void*)0);

 return 0;

out:
 __test_firmware_config_free();
 return ret;
}
