
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct nm256* device_data; } ;
struct nm256 {int dummy; } ;


 int snd_nm256_free (struct nm256*) ;

__attribute__((used)) static int snd_nm256_dev_free(struct snd_device *device)
{
 struct nm256 *chip = device->device_data;
 return snd_nm256_free(chip);
}
