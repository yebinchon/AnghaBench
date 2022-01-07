
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int MBOX_OFFSET ;

__attribute__((used)) static int byt_get_mailbox_offset(struct snd_sof_dev *sdev)
{
 return MBOX_OFFSET;
}
