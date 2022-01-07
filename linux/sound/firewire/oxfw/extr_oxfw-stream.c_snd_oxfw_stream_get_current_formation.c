
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_oxfw_stream_formation {int dummy; } ;
struct snd_oxfw {int unit; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 unsigned int AVC_GENERIC_FRAME_MAXIMUM_BYTES ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int avc_stream_get_format_single (int ,int,int ,int *,unsigned int*) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;

int snd_oxfw_stream_get_current_formation(struct snd_oxfw *oxfw,
    enum avc_general_plug_dir dir,
    struct snd_oxfw_stream_formation *formation)
{
 u8 *format;
 unsigned int len;
 int err;

 len = AVC_GENERIC_FRAME_MAXIMUM_BYTES;
 format = kmalloc(len, GFP_KERNEL);
 if (format == ((void*)0))
  return -ENOMEM;

 err = avc_stream_get_format_single(oxfw->unit, dir, 0, format, &len);
 if (err < 0)
  goto end;
 if (len < 3) {
  err = -EIO;
  goto end;
 }

 err = snd_oxfw_stream_parse_format(format, formation);
end:
 kfree(format);
 return err;
}
