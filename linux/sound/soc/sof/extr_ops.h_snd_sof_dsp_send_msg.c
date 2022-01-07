
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_ipc_msg {int dummy; } ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* send_msg ) (struct snd_sof_dev*,struct snd_sof_ipc_msg*) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,struct snd_sof_ipc_msg*) ;

__attribute__((used)) static inline int snd_sof_dsp_send_msg(struct snd_sof_dev *sdev,
           struct snd_sof_ipc_msg *msg)
{
 return sof_ops(sdev)->send_msg(sdev, msg);
}
