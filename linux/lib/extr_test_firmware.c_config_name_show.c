
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int config_test_show_str (char*,int ) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static ssize_t config_name_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 return config_test_show_str(buf, test_fw_config->name);
}
