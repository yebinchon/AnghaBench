
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_info {int dummy; } ;


 int xen_snd_front_alsa_init (struct xen_snd_front_info*) ;

__attribute__((used)) static int sndback_connect(struct xen_snd_front_info *front_info)
{
 return xen_snd_front_alsa_init(front_info);
}
