
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int sof_resume (struct device*,int) ;

int snd_sof_runtime_resume(struct device *dev)
{
 return sof_resume(dev, 1);
}
