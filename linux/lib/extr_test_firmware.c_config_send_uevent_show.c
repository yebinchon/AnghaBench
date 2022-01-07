
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int send_uevent; } ;


 int test_dev_config_show_bool (char*,int ) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static ssize_t config_send_uevent_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 return test_dev_config_show_bool(buf, test_fw_config->send_uevent);
}
