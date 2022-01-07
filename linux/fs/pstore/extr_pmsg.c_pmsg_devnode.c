
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int dummy; } ;



__attribute__((used)) static char *pmsg_devnode(struct device *dev, umode_t *mode)
{
 if (mode)
  *mode = 0220;
 return ((void*)0);
}
