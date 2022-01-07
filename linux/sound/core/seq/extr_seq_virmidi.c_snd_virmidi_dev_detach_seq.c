
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {int client; } ;


 int snd_seq_delete_kernel_client (int) ;

__attribute__((used)) static void snd_virmidi_dev_detach_seq(struct snd_virmidi_dev *rdev)
{
 if (rdev->client >= 0) {
  snd_seq_delete_kernel_client(rdev->client);
  rdev->client = -1;
 }
}
