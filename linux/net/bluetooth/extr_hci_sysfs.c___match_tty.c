
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int __match_tty(struct device *dev, void *data)
{
 return !strncmp(dev_name(dev), "rfcomm", 6);
}
