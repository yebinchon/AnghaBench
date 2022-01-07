
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rchan_buf {int finalized; int kref; int dentry; TYPE_2__* chan; int wakeup_work; } ;
struct TYPE_4__ {TYPE_1__* cb; } ;
struct TYPE_3__ {int (* remove_buf_file ) (int ) ;} ;


 int irq_work_sync (int *) ;
 int kref_put (int *,int ) ;
 int relay_remove_buf ;
 int stub1 (int ) ;

__attribute__((used)) static void relay_close_buf(struct rchan_buf *buf)
{
 buf->finalized = 1;
 irq_work_sync(&buf->wakeup_work);
 buf->chan->cb->remove_buf_file(buf->dentry);
 kref_put(&buf->kref, relay_remove_buf);
}
