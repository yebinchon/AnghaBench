
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct sis7019* device_data; } ;
struct sis7019 {int dummy; } ;


 int sis_chip_free (struct sis7019*) ;

__attribute__((used)) static int sis_dev_free(struct snd_device *dev)
{
 struct sis7019 *sis = dev->device_data;
 return sis_chip_free(sis);
}
