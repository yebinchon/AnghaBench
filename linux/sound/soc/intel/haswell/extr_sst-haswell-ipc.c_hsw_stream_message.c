
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_hsw_stream {int header; int notify_work; } ;
struct sst_hsw {int dev; } ;




 int dev_err (int ,char*,int) ;
 struct sst_hsw_stream* get_stream_by_id (struct sst_hsw*,int) ;
 int hsw_process_reply (struct sst_hsw*,int) ;
 int msg_get_stream_id (int) ;
 int msg_get_stream_type (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int hsw_stream_message(struct sst_hsw *hsw, u32 header)
{
 u32 stream_msg, stream_id;
 struct sst_hsw_stream *stream;
 int handled = 0;

 stream_msg = msg_get_stream_type(header);
 stream_id = msg_get_stream_id(header);

 stream = get_stream_by_id(hsw, stream_id);
 if (stream == ((void*)0))
  return handled;

 stream->header = header;

 switch (stream_msg) {
 case 128:
  dev_err(hsw->dev, "error: stage msg not implemented 0x%8.8x\n",
   header);
  break;
 case 129:
  schedule_work(&stream->notify_work);
  break;
 default:

  handled = hsw_process_reply(hsw, header);
  break;
 }

 return handled;
}
