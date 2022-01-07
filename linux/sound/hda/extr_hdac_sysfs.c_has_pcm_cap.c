
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {scalar_t__ afg; scalar_t__ mfg; } ;
typedef scalar_t__ hda_nid_t ;




 int get_wcaps (struct hdac_device*,scalar_t__) ;
 int get_wcaps_type (int ) ;

__attribute__((used)) static bool has_pcm_cap(struct hdac_device *codec, hda_nid_t nid)
{
 if (nid == codec->afg || nid == codec->mfg)
  return 1;
 switch (get_wcaps_type(get_wcaps(codec, nid))) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
