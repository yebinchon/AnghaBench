
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;


 int EINVAL ;
 int chipio_write_data (struct hda_codec*,int ) ;
 int codec_dbg (struct hda_codec*,char*) ;

__attribute__((used)) static int chipio_write_data_multiple(struct hda_codec *codec,
          const u32 *data,
          unsigned int count)
{
 int status = 0;

 if (data == ((void*)0)) {
  codec_dbg(codec, "chipio_write_data null ptr\n");
  return -EINVAL;
 }

 while ((count-- != 0) && (status == 0))
  status = chipio_write_data(codec, *data++);

 return status;
}
