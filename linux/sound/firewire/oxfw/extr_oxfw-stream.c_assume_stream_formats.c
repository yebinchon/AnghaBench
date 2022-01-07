
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct snd_oxfw_stream_formation {scalar_t__ rate; } ;
struct snd_oxfw {int assumed; TYPE_1__* card; TYPE_2__* unit; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int card_dev; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int AVC_GENERAL_PLUG_DIR_IN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int avc_general_inquiry_sig_fmt (TYPE_2__*,scalar_t__,int,unsigned int) ;
 int avc_stream_get_format_single (TYPE_2__*,int,unsigned int,int *,unsigned int*) ;
 int * avc_stream_rate_table ;
 int dev_err (int *,char*,char*,unsigned int,int) ;
 int * devm_kmemdup (int *,int *,unsigned int,int ) ;
 scalar_t__* oxfw_rate_table ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static int
assume_stream_formats(struct snd_oxfw *oxfw, enum avc_general_plug_dir dir,
        unsigned int pid, u8 *buf, unsigned int *len,
        u8 **formats)
{
 struct snd_oxfw_stream_formation formation;
 unsigned int i, eid;
 int err;


 err = avc_stream_get_format_single(oxfw->unit, dir, pid, buf, len);
 if (err < 0) {
  dev_err(&oxfw->unit->device,
  "fail to get current stream format for isoc %s plug %d:%d\n",
   (dir == AVC_GENERAL_PLUG_DIR_IN) ? "in" : "out",
   pid, err);
  goto end;
 }


 eid = 0;
 err = snd_oxfw_stream_parse_format(buf, &formation);
 if (err < 0)
  goto end;

 formats[eid] = devm_kmemdup(&oxfw->card->card_dev, buf, *len,
        GFP_KERNEL);
 if (!formats[eid]) {
  err = -ENOMEM;
  goto end;
 }


 for (i = 0; i < ARRAY_SIZE(oxfw_rate_table); i++) {
  if (formation.rate == oxfw_rate_table[i])
   continue;

  err = avc_general_inquiry_sig_fmt(oxfw->unit,
        oxfw_rate_table[i],
        dir, pid);
  if (err < 0)
   continue;

  eid++;
  formats[eid] = devm_kmemdup(&oxfw->card->card_dev, buf, *len,
         GFP_KERNEL);
  if (formats[eid] == ((void*)0)) {
   err = -ENOMEM;
   goto end;
  }
  formats[eid][2] = avc_stream_rate_table[i];
 }

 err = 0;
 oxfw->assumed = 1;
end:
 return err;
}
