
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int num_waiting; } ;
struct cuse_conn {TYPE_1__ fc; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 struct cuse_conn* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t cuse_class_waiting_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct cuse_conn *cc = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", atomic_read(&cc->fc.num_waiting));
}
