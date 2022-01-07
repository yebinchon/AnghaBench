
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lapb_cb {int dev; TYPE_1__* callbacks; } ;
struct TYPE_2__ {int (* disconnect_confirmation ) (int ,int) ;} ;


 int stub1 (int ,int) ;

void lapb_disconnect_confirmation(struct lapb_cb *lapb, int reason)
{
 if (lapb->callbacks->disconnect_confirmation)
  lapb->callbacks->disconnect_confirmation(lapb->dev, reason);
}
