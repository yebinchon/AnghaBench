
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {int dummy; } ;


 int snd_printdd (char*) ;

__attribute__((used)) static int snd_msnd_dev_free(struct snd_device *device)
{
 snd_printdd("snd_msnd_chip_free()\n");
 return 0;
}
