
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lx_stream {unsigned int is_capture; int status; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int LX_STREAM_STATUS_FREE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int lx_stream_stop (struct lx6464es*,int ,unsigned int const) ;

__attribute__((used)) static void lx_trigger_stop(struct lx6464es *chip, struct lx_stream *lx_stream)
{
 const unsigned int is_capture = lx_stream->is_capture;
 int err;

 dev_dbg(chip->card->dev, "stopping: stopping stream\n");
 err = lx_stream_stop(chip, 0, is_capture);
 if (err < 0)
  dev_err(chip->card->dev, "couldn't stop stream\n");
 else
  lx_stream->status = LX_STREAM_STATUS_FREE;

}
