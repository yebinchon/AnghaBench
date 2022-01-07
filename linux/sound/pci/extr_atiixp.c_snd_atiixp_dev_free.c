
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct atiixp* device_data; } ;
struct atiixp {int dummy; } ;


 int snd_atiixp_free (struct atiixp*) ;

__attribute__((used)) static int snd_atiixp_dev_free(struct snd_device *device)
{
 struct atiixp *chip = device->device_data;
 return snd_atiixp_free(chip);
}
