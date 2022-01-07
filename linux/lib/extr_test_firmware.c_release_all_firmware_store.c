
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int test_release_all_firmware () ;

__attribute__((used)) static ssize_t release_all_firmware_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 test_release_all_firmware();
 return count;
}
