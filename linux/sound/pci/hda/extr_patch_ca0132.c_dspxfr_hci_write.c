
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
struct dsp_image_seg {scalar_t__ chip_addr; unsigned int count; scalar_t__ data; } ;


 int EINVAL ;
 int chipio_write (struct hda_codec*,int const,int const) ;
 int codec_dbg (struct hda_codec*,char*) ;
 scalar_t__ g_chip_addr_magic_value ;

__attribute__((used)) static int dspxfr_hci_write(struct hda_codec *codec,
   const struct dsp_image_seg *fls)
{
 int status;
 const u32 *data;
 unsigned int count;

 if (fls == ((void*)0) || fls->chip_addr != g_chip_addr_magic_value) {
  codec_dbg(codec, "hci_write invalid params\n");
  return -EINVAL;
 }

 count = fls->count;
 data = (u32 *)(fls->data);
 while (count >= 2) {
  status = chipio_write(codec, data[0], data[1]);
  if (status < 0) {
   codec_dbg(codec, "hci_write chipio failed\n");
   return status;
  }
  count -= 2;
  data += 2;
 }
 return 0;
}
