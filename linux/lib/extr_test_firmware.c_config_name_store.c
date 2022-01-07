
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int GFP_KERNEL ;
 int __kstrncpy (int *,char const*,size_t,int ) ;
 int kfree_const (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* test_fw_config ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t config_name_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 int ret;

 mutex_lock(&test_fw_mutex);
 kfree_const(test_fw_config->name);
 ret = __kstrncpy(&test_fw_config->name, buf, count, GFP_KERNEL);
 mutex_unlock(&test_fw_mutex);

 return ret;
}
