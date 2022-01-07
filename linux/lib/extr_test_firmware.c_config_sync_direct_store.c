
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ sync_direct; int req_firmware; } ;


 int request_firmware ;
 int request_firmware_direct ;
 int test_dev_config_update_bool (char const*,size_t,scalar_t__*) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static ssize_t config_sync_direct_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 int rc = test_dev_config_update_bool(buf, count,
          &test_fw_config->sync_direct);

 if (rc == count)
  test_fw_config->req_firmware = test_fw_config->sync_direct ?
           request_firmware_direct :
           request_firmware;
 return rc;
}
