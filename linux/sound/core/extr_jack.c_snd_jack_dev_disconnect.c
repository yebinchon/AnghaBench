
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {int * input_dev; scalar_t__ registered; } ;
struct snd_device {struct snd_jack* device_data; } ;


 int input_free_device (int *) ;
 int input_unregister_device (int *) ;

__attribute__((used)) static int snd_jack_dev_disconnect(struct snd_device *device)
{
 return 0;
}
