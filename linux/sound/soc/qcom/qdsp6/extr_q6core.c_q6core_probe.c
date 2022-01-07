
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct apr_device {int dev; } ;
struct TYPE_4__ {int wait; struct apr_device* adev; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,TYPE_1__*) ;
 TYPE_1__* g_core ;
 int init_waitqueue_head (int *) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int q6core_probe(struct apr_device *adev)
{
 g_core = kzalloc(sizeof(*g_core), GFP_KERNEL);
 if (!g_core)
  return -ENOMEM;

 dev_set_drvdata(&adev->dev, g_core);

 mutex_init(&g_core->lock);
 g_core->adev = adev;
 init_waitqueue_head(&g_core->wait);
 return 0;
}
