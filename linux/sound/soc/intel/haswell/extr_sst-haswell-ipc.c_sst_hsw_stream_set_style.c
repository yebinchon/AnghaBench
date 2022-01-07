
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int style; } ;
struct TYPE_4__ {TYPE_1__ format; } ;
struct sst_hsw_stream {TYPE_2__ request; scalar_t__ commited; } ;
struct sst_hsw {int dev; } ;
typedef enum sst_hsw_interleaving { ____Placeholder_sst_hsw_interleaving } sst_hsw_interleaving ;


 int EINVAL ;
 int dev_err (int ,char*) ;

int sst_hsw_stream_set_style(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream, enum sst_hsw_interleaving style)
{
 if (stream->commited) {
  dev_err(hsw->dev, "error: stream committed for set style\n");
  return -EINVAL;
 }

 stream->request.format.style = style;
 return 0;
}
