
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct ct_atc* device_data; } ;
struct ct_atc {int dummy; } ;


 int ct_atc_destroy (struct ct_atc*) ;

__attribute__((used)) static int atc_dev_free(struct snd_device *dev)
{
 struct ct_atc *atc = dev->device_data;
 return ct_atc_destroy(atc);
}
