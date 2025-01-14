
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef unsigned int hda_nid_t ;


 int AC_PAR_NODE_COUNT ;
 unsigned int snd_hdac_read_parm_uncached (struct hdac_device*,unsigned int,int ) ;

int snd_hdac_get_sub_nodes(struct hdac_device *codec, hda_nid_t nid,
      hda_nid_t *start_id)
{
 unsigned int parm;

 parm = snd_hdac_read_parm_uncached(codec, nid, AC_PAR_NODE_COUNT);
 if (parm == -1) {
  *start_id = 0;
  return 0;
 }
 *start_id = (parm >> 16) & 0x7fff;
 return (int)(parm & 0x7fff);
}
