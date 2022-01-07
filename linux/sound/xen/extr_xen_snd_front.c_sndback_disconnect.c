
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_info {int xb_dev; } ;


 int XenbusStateInitialising ;
 int xen_snd_drv_fini (struct xen_snd_front_info*) ;
 int xenbus_switch_state (int ,int ) ;

__attribute__((used)) static void sndback_disconnect(struct xen_snd_front_info *front_info)
{
 xen_snd_drv_fini(front_info);
 xenbus_switch_state(front_info->xb_dev, XenbusStateInitialising);
}
