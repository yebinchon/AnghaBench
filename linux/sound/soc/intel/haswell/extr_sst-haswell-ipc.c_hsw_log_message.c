
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sst_hsw_log_stream {int notify_work; int rw_mutex; int curr_pos; int last_pos; } ;
struct sst_hsw {int dsp; int dev; struct sst_hsw_log_stream log_stream; } ;


 scalar_t__ IPC_DEBUG_REQUEST_LOG_DUMP ;
 scalar_t__ IPC_LOG_OP_MASK ;
 scalar_t__ IPC_LOG_OP_SHIFT ;
 int dev_err (int ,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int sst_dsp_inbox_read (int ,int *,int) ;

__attribute__((used)) static int hsw_log_message(struct sst_hsw *hsw, u32 header)
{
 u32 operation = (header & IPC_LOG_OP_MASK) >> IPC_LOG_OP_SHIFT;
 struct sst_hsw_log_stream *stream = &hsw->log_stream;
 int ret = 1;

 if (operation != IPC_DEBUG_REQUEST_LOG_DUMP) {
  dev_err(hsw->dev,
   "error: log msg not implemented 0x%8.8x\n", header);
  return 0;
 }

 mutex_lock(&stream->rw_mutex);
 stream->last_pos = stream->curr_pos;
 sst_dsp_inbox_read(
  hsw->dsp, &stream->curr_pos, sizeof(stream->curr_pos));
 mutex_unlock(&stream->rw_mutex);

 schedule_work(&stream->notify_work);

 return ret;
}
