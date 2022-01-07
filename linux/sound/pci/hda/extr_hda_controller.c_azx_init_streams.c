
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;
struct azx {int num_streams; int driver_caps; } ;


 int AZX_DCAPS_SEPARATE_STREAM_TAG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int azx_bus (struct azx*) ;
 int azx_stream (struct azx_dev*) ;
 struct azx_dev* kzalloc (int,int ) ;
 int snd_hdac_stream_init (int ,int ,int,int,int) ;
 int stream_direction (struct azx*,int) ;

int azx_init_streams(struct azx *chip)
{
 int i;
 int stream_tags[2] = { 0, 0 };





 for (i = 0; i < chip->num_streams; i++) {
  struct azx_dev *azx_dev = kzalloc(sizeof(*azx_dev), GFP_KERNEL);
  int dir, tag;

  if (!azx_dev)
   return -ENOMEM;

  dir = stream_direction(chip, i);






  if (chip->driver_caps & AZX_DCAPS_SEPARATE_STREAM_TAG)
   tag = ++stream_tags[dir];
  else
   tag = i + 1;
  snd_hdac_stream_init(azx_bus(chip), azx_stream(azx_dev),
         i, dir, tag);
 }

 return 0;
}
