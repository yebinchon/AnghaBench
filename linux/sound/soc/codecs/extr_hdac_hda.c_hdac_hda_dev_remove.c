
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jackpoll_work; } ;
struct hdac_hda_priv {TYPE_1__ codec; } ;
struct hdac_device {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 struct hdac_hda_priv* dev_get_drvdata (int *) ;

__attribute__((used)) static int hdac_hda_dev_remove(struct hdac_device *hdev)
{
 struct hdac_hda_priv *hda_pvt;

 hda_pvt = dev_get_drvdata(&hdev->dev);
 cancel_delayed_work_sync(&hda_pvt->codec.jackpoll_work);
 return 0;
}
