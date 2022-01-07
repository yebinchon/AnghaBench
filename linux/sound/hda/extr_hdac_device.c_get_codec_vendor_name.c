
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hdac_device {int vendor_id; int vendor_name; } ;
struct hda_vendor_id {scalar_t__ id; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hda_vendor_id* hda_vendor_ids ;
 int kasprintf (int ,char*,scalar_t__) ;
 int kstrdup (int ,int ) ;

__attribute__((used)) static int get_codec_vendor_name(struct hdac_device *codec)
{
 const struct hda_vendor_id *c;
 u16 vendor_id = codec->vendor_id >> 16;

 for (c = hda_vendor_ids; c->id; c++) {
  if (c->id == vendor_id) {
   codec->vendor_name = kstrdup(c->name, GFP_KERNEL);
   return codec->vendor_name ? 0 : -ENOMEM;
  }
 }

 codec->vendor_name = kasprintf(GFP_KERNEL, "Generic %04x", vendor_id);
 return codec->vendor_name ? 0 : -ENOMEM;
}
