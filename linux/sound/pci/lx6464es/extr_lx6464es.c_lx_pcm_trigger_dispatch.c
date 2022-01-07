
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx_stream {int status; } ;
struct lx6464es {int lock; int playback_stream; int capture_stream; } ;


 int EINVAL ;
 int LX_STREAM_STATUS_SCHEDULE_RUN ;
 int LX_STREAM_STATUS_SCHEDULE_STOP ;


 int lx_trigger_dispatch_stream (struct lx6464es*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lx_pcm_trigger_dispatch(struct lx6464es *chip,
       struct lx_stream *lx_stream, int cmd)
{
 int err = 0;

 mutex_lock(&chip->lock);
 switch (cmd) {
 case 129:
  lx_stream->status = LX_STREAM_STATUS_SCHEDULE_RUN;
  break;

 case 128:
  lx_stream->status = LX_STREAM_STATUS_SCHEDULE_STOP;
  break;

 default:
  err = -EINVAL;
  goto exit;
 }

 lx_trigger_dispatch_stream(chip, &chip->capture_stream);
 lx_trigger_dispatch_stream(chip, &chip->playback_stream);

exit:
 mutex_unlock(&chip->lock);
 return err;
}
