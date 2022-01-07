
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_oxfw_stream_formation {int dummy; } ;
struct snd_oxfw {TYPE_2__* unit; TYPE_1__* card; int ** rx_stream_formats; int ** tx_stream_formats; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int card_dev; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 unsigned int AVC_GENERIC_FRAME_MAXIMUM_BYTES ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 unsigned int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 int assume_stream_formats (struct snd_oxfw*,int,unsigned short,int *,unsigned int*,int **) ;
 int avc_stream_get_format_list (TYPE_2__*,int,int ,int *,unsigned int*,unsigned int) ;
 int dev_err (int *,char*,unsigned int,char*,unsigned short,int) ;
 int * devm_kmemdup (int *,int *,unsigned int,int ) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static int fill_stream_formats(struct snd_oxfw *oxfw,
          enum avc_general_plug_dir dir,
          unsigned short pid)
{
 u8 *buf, **formats;
 unsigned int len, eid = 0;
 struct snd_oxfw_stream_formation dummy;
 int err;

 buf = kmalloc(AVC_GENERIC_FRAME_MAXIMUM_BYTES, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 if (dir == AVC_GENERAL_PLUG_DIR_OUT)
  formats = oxfw->tx_stream_formats;
 else
  formats = oxfw->rx_stream_formats;


 len = AVC_GENERIC_FRAME_MAXIMUM_BYTES;
 err = avc_stream_get_format_list(oxfw->unit, dir, 0, buf, &len, 0);
 if (err == -ENOSYS) {

  len = AVC_GENERIC_FRAME_MAXIMUM_BYTES;
  err = assume_stream_formats(oxfw, dir, pid, buf, &len,
         formats);
  goto end;
 } else if (err < 0) {
  dev_err(&oxfw->unit->device,
   "fail to get stream format %d for isoc %s plug %d:%d\n",
   eid, (dir == AVC_GENERAL_PLUG_DIR_IN) ? "in" : "out",
   pid, err);
  goto end;
 }


 while (eid < SND_OXFW_STREAM_FORMAT_ENTRIES) {

  if (len < 3) {
   err = -EIO;
   break;
  }


  err = snd_oxfw_stream_parse_format(buf, &dummy);
  if (err < 0)
   break;

  formats[eid] = devm_kmemdup(&oxfw->card->card_dev, buf, len,
         GFP_KERNEL);
  if (!formats[eid]) {
   err = -ENOMEM;
   break;
  }


  len = AVC_GENERIC_FRAME_MAXIMUM_BYTES;
  err = avc_stream_get_format_list(oxfw->unit, dir, 0,
       buf, &len, ++eid);

  if (err == -EINVAL) {
   err = 0;
   break;
  } else if (err < 0) {
   dev_err(&oxfw->unit->device,
   "fail to get stream format %d for isoc %s plug %d:%d\n",
    eid, (dir == AVC_GENERAL_PLUG_DIR_IN) ? "in" :
         "out",
    pid, err);
   break;
  }
 }
end:
 kfree(buf);
 return err;
}
