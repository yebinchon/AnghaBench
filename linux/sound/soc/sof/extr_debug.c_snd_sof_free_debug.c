
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void snd_sof_free_debug(struct snd_sof_dev *sdev)
{
 debugfs_remove_recursive(sdev->debugfs_root);
}
