
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {size_t size; void* offset; } ;
struct TYPE_3__ {size_t size; void* offset; } ;
struct snd_sof_dev {TYPE_2__ host_box; TYPE_1__ dsp_box; } ;



int snd_sof_dsp_mailbox_init(struct snd_sof_dev *sdev, u32 dspbox,
        size_t dspbox_size, u32 hostbox,
        size_t hostbox_size)
{
 sdev->dsp_box.offset = dspbox;
 sdev->dsp_box.size = dspbox_size;
 sdev->host_box.offset = hostbox;
 sdev->host_box.size = hostbox_size;
 return 0;
}
