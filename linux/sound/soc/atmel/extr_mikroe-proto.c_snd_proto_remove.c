
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int snd_proto ;
 int snd_soc_unregister_card (int *) ;

__attribute__((used)) static int snd_proto_remove(struct platform_device *pdev)
{
 return snd_soc_unregister_card(&snd_proto);
}
