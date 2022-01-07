
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {int seq_mode; int client; } ;
struct snd_rawmidi {struct snd_virmidi_dev* private_data; } ;


 int EINVAL ;


 int pr_err (char*,int) ;
 int snd_virmidi_dev_attach_seq (struct snd_virmidi_dev*) ;

__attribute__((used)) static int snd_virmidi_dev_register(struct snd_rawmidi *rmidi)
{
 struct snd_virmidi_dev *rdev = rmidi->private_data;
 int err;

 switch (rdev->seq_mode) {
 case 128:
  err = snd_virmidi_dev_attach_seq(rdev);
  if (err < 0)
   return err;
  break;
 case 129:
  if (rdev->client == 0)
   return -EINVAL;

  break;
 default:
  pr_err("ALSA: seq_virmidi: seq_mode is not set: %d\n", rdev->seq_mode);
  return -EINVAL;
 }
 return 0;
}
