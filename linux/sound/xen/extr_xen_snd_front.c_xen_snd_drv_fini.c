
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_info {int dummy; } ;


 int xen_snd_front_alsa_fini (struct xen_snd_front_info*) ;
 int xen_snd_front_evtchnl_free_all (struct xen_snd_front_info*) ;

__attribute__((used)) static void xen_snd_drv_fini(struct xen_snd_front_info *front_info)
{
 xen_snd_front_alsa_fini(front_info);
 xen_snd_front_evtchnl_free_all(front_info);
}
