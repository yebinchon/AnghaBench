
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_info {int dummy; } ;


 int xen_snd_front_cfg_card (struct xen_snd_front_info*,int*) ;
 int xen_snd_front_evtchnl_create_all (struct xen_snd_front_info*,int) ;
 int xen_snd_front_evtchnl_publish_all (struct xen_snd_front_info*) ;

__attribute__((used)) static int sndback_initwait(struct xen_snd_front_info *front_info)
{
 int num_streams;
 int ret;

 ret = xen_snd_front_cfg_card(front_info, &num_streams);
 if (ret < 0)
  return ret;


 ret = xen_snd_front_evtchnl_create_all(front_info, num_streams);
 if (ret < 0)
  return ret;

 return xen_snd_front_evtchnl_publish_all(front_info);
}
