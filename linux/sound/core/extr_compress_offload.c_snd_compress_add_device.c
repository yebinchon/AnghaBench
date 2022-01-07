
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr {int card; } ;


 int EINVAL ;
 int pr_err (char*,int) ;
 int snd_card_register (int ) ;

__attribute__((used)) static int snd_compress_add_device(struct snd_compr *device)
{
 int ret;

 if (!device->card)
  return -EINVAL;


 ret = snd_card_register(device->card);
 if (ret)
  goto out;
 return 0;

out:
 pr_err("failed with %d\n", ret);
 return ret;

}
