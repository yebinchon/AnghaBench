
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 scalar_t__ request_module (char*,int ,...) ;

__attribute__((used)) static struct kobject *base_probe(dev_t dev, int *part, void *data)
{
 if (request_module("char-major-%d-%d", MAJOR(dev), MINOR(dev)) > 0)

  request_module("char-major-%d", MAJOR(dev));
 return ((void*)0);
}
