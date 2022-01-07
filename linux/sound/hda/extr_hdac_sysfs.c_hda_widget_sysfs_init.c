
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {scalar_t__ widgets; } ;


 int widget_tree_create (struct hdac_device*) ;
 int widget_tree_free (struct hdac_device*) ;

int hda_widget_sysfs_init(struct hdac_device *codec)
{
 int err;

 if (codec->widgets)
  return 0;

 err = widget_tree_create(codec);
 if (err < 0) {
  widget_tree_free(codec);
  return err;
 }

 return 0;
}
