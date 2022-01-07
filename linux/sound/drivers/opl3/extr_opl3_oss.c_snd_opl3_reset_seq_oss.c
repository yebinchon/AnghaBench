
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_arg {int dummy; } ;


 int ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int snd_opl3_reset_seq_oss(struct snd_seq_oss_arg *arg)
{
 if (snd_BUG_ON(!arg))
  return -ENXIO;

 return 0;
}
