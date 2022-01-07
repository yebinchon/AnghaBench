
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dfsentry {struct snd_sof_dev* sdev; int size; int buf; int type; } ;
struct TYPE_2__ {int bytes; int area; } ;
struct snd_sof_dev {int debugfs_root; TYPE_1__ dmatb; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SOF_DFSENTRY_TYPE_BUF ;
 int debugfs_create_file (char*,int,int ,struct snd_sof_dfsentry*,int *) ;
 struct snd_sof_dfsentry* devm_kzalloc (int ,int,int ) ;
 int sof_dfs_trace_fops ;

__attribute__((used)) static int trace_debugfs_create(struct snd_sof_dev *sdev)
{
 struct snd_sof_dfsentry *dfse;

 if (!sdev)
  return -EINVAL;

 dfse = devm_kzalloc(sdev->dev, sizeof(*dfse), GFP_KERNEL);
 if (!dfse)
  return -ENOMEM;

 dfse->type = SOF_DFSENTRY_TYPE_BUF;
 dfse->buf = sdev->dmatb.area;
 dfse->size = sdev->dmatb.bytes;
 dfse->sdev = sdev;

 debugfs_create_file("trace", 0444, sdev->debugfs_root, dfse,
       &sof_dfs_trace_fops);

 return 0;
}
