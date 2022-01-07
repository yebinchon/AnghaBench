
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_bebob {int dummy; } ;
typedef int __be16 ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ METER_SIZE_SPECIAL ;
 int be16_to_cpu (int ) ;
 int get_meter (struct snd_bebob*,void*,scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int special_meter_labels ;

__attribute__((used)) static int
special_meter_get(struct snd_bebob *bebob, u32 *target, unsigned int size)
{
 __be16 *buf;
 unsigned int i, c, channels;
 int err;

 channels = ARRAY_SIZE(special_meter_labels) * 2;
 if (size < channels * sizeof(u32))
  return -EINVAL;


 buf = kmalloc(METER_SIZE_SPECIAL - 4, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 err = get_meter(bebob, (void *)buf, METER_SIZE_SPECIAL - 4);
 if (err < 0)
  goto end;


 i = 0;
 for (c = 2; c < channels + 2; c++)
  target[i++] = be16_to_cpu(buf[c]) << 16;
end:
 kfree(buf);
 return err;
}
