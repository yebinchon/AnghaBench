
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 int pcxhr_enable_irq (struct pcxhr_mgr*,int) ;

void pcxhr_enable_dsp(struct pcxhr_mgr *mgr)
{

 pcxhr_enable_irq(mgr, 1);
}
