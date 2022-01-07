
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int num_nodes; int widget_lock; void* end_nid; void* start_nid; int afg; int dev; } ;
typedef void* hda_nid_t ;


 int EINVAL ;
 int dev_err (int *,char*,int ) ;
 int hda_widget_sysfs_reinit (struct hdac_device*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hdac_get_sub_nodes (struct hdac_device*,int ,void**) ;

int snd_hdac_refresh_widgets(struct hdac_device *codec)
{
 hda_nid_t start_nid;
 int nums, err = 0;





 mutex_lock(&codec->widget_lock);
 nums = snd_hdac_get_sub_nodes(codec, codec->afg, &start_nid);
 if (!start_nid || nums <= 0 || nums >= 0xff) {
  dev_err(&codec->dev, "cannot read sub nodes for FG 0x%02x\n",
   codec->afg);
  err = -EINVAL;
  goto unlock;
 }

 err = hda_widget_sysfs_reinit(codec, start_nid, nums);
 if (err < 0)
  goto unlock;

 codec->num_nodes = nums;
 codec->start_nid = start_nid;
 codec->end_nid = start_nid + nums;
unlock:
 mutex_unlock(&codec->widget_lock);
 return err;
}
