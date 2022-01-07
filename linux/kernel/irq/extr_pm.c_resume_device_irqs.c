
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resume_irqs (int) ;

void resume_device_irqs(void)
{
 resume_irqs(0);
}
