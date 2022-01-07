
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int MBOX_OFFSET ;

__attribute__((used)) static int byt_get_window_offset(struct snd_sof_dev *sdev, u32 id)
{
 return MBOX_OFFSET;
}
