
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct soundbus_dev {int pcmid; int * pcmname; TYPE_1__ ofdev; } ;
struct TYPE_8__ {TYPE_2__* methods; } ;
struct layout_dev {TYPE_3__ gpio; int sound; int list; int ** codecs; } ;
struct TYPE_7__ {int (* exit ) (TYPE_3__*) ;int (* set_notify ) (TYPE_3__*,int ,int *,int *) ;} ;


 int AOA_NOTIFY_HEADPHONE ;
 int AOA_NOTIFY_LINE_OUT ;
 int MAX_CODECS_PER_BUS ;
 int aoa_fabric_unlink_codec (int *) ;
 struct layout_dev* dev_get_drvdata (int *) ;
 int kfree (struct layout_dev*) ;
 int * layout_device ;
 int layouts_list_items ;
 int list_del (int *) ;
 int of_node_put (int ) ;
 int stub1 (TYPE_3__*,int ,int *,int *) ;
 int stub2 (TYPE_3__*,int ,int *,int *) ;
 int stub3 (TYPE_3__*) ;

__attribute__((used)) static int aoa_fabric_layout_remove(struct soundbus_dev *sdev)
{
 struct layout_dev *ldev = dev_get_drvdata(&sdev->ofdev.dev);
 int i;

 for (i=0; i<MAX_CODECS_PER_BUS; i++) {
  if (ldev->codecs[i]) {
   aoa_fabric_unlink_codec(ldev->codecs[i]);
  }
  ldev->codecs[i] = ((void*)0);
 }
 list_del(&ldev->list);
 layouts_list_items--;
 of_node_put(ldev->sound);

 ldev->gpio.methods->set_notify(&ldev->gpio,
           AOA_NOTIFY_HEADPHONE,
           ((void*)0),
           ((void*)0));
 ldev->gpio.methods->set_notify(&ldev->gpio,
           AOA_NOTIFY_LINE_OUT,
           ((void*)0),
           ((void*)0));

 ldev->gpio.methods->exit(&ldev->gpio);
 layout_device = ((void*)0);
 kfree(ldev);
 sdev->pcmid = -1;
 sdev->pcmname = ((void*)0);
 return 0;
}
