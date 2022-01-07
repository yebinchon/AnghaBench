
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int (* private_free ) (struct snd_seq_device*) ;} ;
struct device {int dummy; } ;


 int kfree (struct snd_seq_device*) ;
 int stub1 (struct snd_seq_device*) ;
 struct snd_seq_device* to_seq_dev (struct device*) ;

__attribute__((used)) static void snd_seq_dev_release(struct device *dev)
{
 struct snd_seq_device *sdev = to_seq_dev(dev);

 if (sdev->private_free)
  sdev->private_free(sdev);
 kfree(sdev);
}
