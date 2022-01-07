
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pardevice {int name; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int snd_mts64_dev_probe(struct pardevice *pardev)
{
 if (strcmp(pardev->name, DRIVER_NAME))
  return -ENODEV;

 return 0;
}
