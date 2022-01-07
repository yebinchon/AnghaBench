
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ml403_ac97cr {int dummy; } ;
struct snd_device {struct snd_ml403_ac97cr* device_data; } ;


 int INIT_INFO ;
 int PDEBUG (int ,char*) ;
 int snd_ml403_ac97cr_free (struct snd_ml403_ac97cr*) ;

__attribute__((used)) static int snd_ml403_ac97cr_dev_free(struct snd_device *snddev)
{
 struct snd_ml403_ac97cr *ml403_ac97cr = snddev->device_data;
 PDEBUG(INIT_INFO, "dev_free():\n");
 return snd_ml403_ac97cr_free(ml403_ac97cr);
}
