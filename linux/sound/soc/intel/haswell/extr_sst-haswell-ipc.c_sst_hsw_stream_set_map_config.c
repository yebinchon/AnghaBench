
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int config; int map; } ;
struct TYPE_4__ {TYPE_1__ format; } ;
struct sst_hsw_stream {TYPE_2__ request; scalar_t__ commited; } ;
struct sst_hsw {int dev; } ;
typedef enum sst_hsw_channel_config { ____Placeholder_sst_hsw_channel_config } sst_hsw_channel_config ;


 int EINVAL ;
 int dev_err (int ,char*) ;

int sst_hsw_stream_set_map_config(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, u32 map,
 enum sst_hsw_channel_config config)
{
 if (stream->commited) {
  dev_err(hsw->dev, "error: stream committed for set map\n");
  return -EINVAL;
 }

 stream->request.format.map = map;
 stream->request.format.config = config;
 return 0;
}
