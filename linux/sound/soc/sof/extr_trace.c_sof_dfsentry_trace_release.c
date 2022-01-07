
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dfsentry {struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {scalar_t__ host_offset; int dtrace_is_enabled; } ;
struct inode {struct snd_sof_dfsentry* i_private; } ;
struct file {int dummy; } ;



__attribute__((used)) static int sof_dfsentry_trace_release(struct inode *inode, struct file *file)
{
 struct snd_sof_dfsentry *dfse = inode->i_private;
 struct snd_sof_dev *sdev = dfse->sdev;


 if (!sdev->dtrace_is_enabled)
  sdev->host_offset = 0;

 return 0;
}
