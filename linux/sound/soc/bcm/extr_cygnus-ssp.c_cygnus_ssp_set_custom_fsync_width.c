
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct cygnus_aio_port {int fsync_width; } ;


 int EINVAL ;
 struct cygnus_aio_port* cygnus_dai_get_portinfo (struct snd_soc_dai*) ;

int cygnus_ssp_set_custom_fsync_width(struct snd_soc_dai *cpu_dai, int len)
{
 struct cygnus_aio_port *aio = cygnus_dai_get_portinfo(cpu_dai);

 if ((len > 0) && (len < 256)) {
  aio->fsync_width = len;
  return 0;
 } else {
  return -EINVAL;
 }
}
