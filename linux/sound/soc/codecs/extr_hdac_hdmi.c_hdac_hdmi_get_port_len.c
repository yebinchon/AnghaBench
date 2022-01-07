
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_DEV_LIST_LEN_MASK ;
 int AC_PAR_DEVLIST_LEN ;
 unsigned int AC_WCAP_DIGITAL ;
 unsigned int AC_WID_PIN ;
 unsigned int get_wcaps (struct hdac_device*,int ) ;
 unsigned int get_wcaps_type (unsigned int) ;
 unsigned int snd_hdac_read_parm_uncached (struct hdac_device*,int ,int ) ;

__attribute__((used)) static int hdac_hdmi_get_port_len(struct hdac_device *hdev, hda_nid_t nid)
{
 unsigned int caps;
 unsigned int type, param;

 caps = get_wcaps(hdev, nid);
 type = get_wcaps_type(caps);

 if (!(caps & AC_WCAP_DIGITAL) || (type != AC_WID_PIN))
  return 0;

 param = snd_hdac_read_parm_uncached(hdev, nid, AC_PAR_DEVLIST_LEN);
 if (param == -1)
  return param;

 return param & AC_DEV_LIST_LEN_MASK;
}
