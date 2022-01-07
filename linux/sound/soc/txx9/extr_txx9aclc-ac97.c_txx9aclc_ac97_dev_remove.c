
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int snd_soc_set_ac97_ops (int *) ;

__attribute__((used)) static int txx9aclc_ac97_dev_remove(struct platform_device *pdev)
{
 snd_soc_set_ac97_ops(((void*)0));
 return 0;
}
