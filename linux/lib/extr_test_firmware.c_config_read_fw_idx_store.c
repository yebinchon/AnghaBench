
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int read_fw_idx; } ;


 int test_dev_config_update_u8 (char const*,size_t,int *) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static ssize_t config_read_fw_idx_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 return test_dev_config_update_u8(buf, count,
      &test_fw_config->read_fw_idx);
}
