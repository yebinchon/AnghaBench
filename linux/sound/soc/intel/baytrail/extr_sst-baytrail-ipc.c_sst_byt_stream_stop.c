
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_byt_stream {int str_id; int commited; } ;
struct sst_byt {int dev; } ;


 int IPC_IA_DROP_STREAM ;
 int dev_err (int ,char*,int ) ;
 int sst_byt_stream_operations (struct sst_byt*,int ,int ,int ) ;

int sst_byt_stream_stop(struct sst_byt *byt, struct sst_byt_stream *stream)
{
 int ret;


 if (!stream->commited)
  return 0;

 ret = sst_byt_stream_operations(byt, IPC_IA_DROP_STREAM,
     stream->str_id, 0);
 if (ret < 0)
  dev_err(byt->dev, "ipc: error failed to stop stream %d\n",
   stream->str_id);
 return ret;
}
