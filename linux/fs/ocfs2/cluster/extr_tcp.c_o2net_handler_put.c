
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_msg_handler {int nh_kref; } ;


 int kref_put (int *,int ) ;
 int o2net_handler_kref_release ;

__attribute__((used)) static void o2net_handler_put(struct o2net_msg_handler *nmh)
{
 kref_put(&nmh->nh_kref, o2net_handler_kref_release);
}
