
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int widget_tree_free (struct hdac_device*) ;

void hda_widget_sysfs_exit(struct hdac_device *codec)
{
 widget_tree_free(codec);
}
