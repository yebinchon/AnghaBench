
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frequency; } ;
struct TYPE_4__ {TYPE_1__ format; } ;
struct sst_hsw_stream {TYPE_2__ request; scalar_t__ commited; } ;
struct sst_hsw {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

int sst_hsw_stream_set_rate(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, int rate)
{
 if (stream->commited) {
  dev_err(hsw->dev, "error: stream committed for set rate\n");
  return -EINVAL;
 }

 stream->request.format.frequency = rate;
 return 0;
}
