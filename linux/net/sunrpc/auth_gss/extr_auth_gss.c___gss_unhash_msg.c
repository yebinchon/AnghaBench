
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int errno; } ;
struct gss_upcall_msg {int count; int waitqueue; TYPE_1__ msg; int rpc_waitqueue; int list; } ;


 int list_del_init (int *) ;
 int refcount_dec (int *) ;
 int rpc_wake_up_status (int *,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void
__gss_unhash_msg(struct gss_upcall_msg *gss_msg)
{
 list_del_init(&gss_msg->list);
 rpc_wake_up_status(&gss_msg->rpc_waitqueue, gss_msg->msg.errno);
 wake_up_all(&gss_msg->waitqueue);
 refcount_dec(&gss_msg->count);
}
