
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ field; } ;
struct skeleton {scalar_t__ field; TYPE_1__ format; int sequence; int qlock; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int timestamp; } ;
struct TYPE_6__ {scalar_t__ field; TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct TYPE_8__ {TYPE_2__ vb; int list; } ;


 int IRQ_HANDLED ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_TOP ;
 int VB2_BUF_STATE_DONE ;
 scalar_t__ captured_new_frame ;
 int ktime_get_ns () ;
 int list_del (int *) ;
 TYPE_4__* new_buf ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;

__attribute__((used)) static irqreturn_t skeleton_irq(int irq, void *dev_id)
{
 return IRQ_HANDLED;
}
