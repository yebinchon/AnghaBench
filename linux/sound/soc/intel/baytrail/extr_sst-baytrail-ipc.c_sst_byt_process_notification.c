
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sst_dsp {int spinlock; } ;
struct sst_byt_stream {int pdata; int (* notify_position ) (struct sst_byt_stream*,int ) ;int running; } ;
struct sst_byt {struct sst_dsp* dsp; } ;




 int SST_IPCD ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sst_byt_fw_ready (struct sst_byt*,int ) ;
 struct sst_byt_stream* sst_byt_get_stream (struct sst_byt*,int) ;
 int sst_byt_header_msg_id (int ) ;
 int sst_byt_header_str_id (int ) ;
 int sst_dsp_shim_read64_unlocked (struct sst_dsp*,int ) ;
 int stub1 (struct sst_byt_stream*,int ) ;

__attribute__((used)) static int sst_byt_process_notification(struct sst_byt *byt,
     unsigned long *flags)
{
 struct sst_dsp *sst = byt->dsp;
 struct sst_byt_stream *stream;
 u64 header;
 u8 msg_id, stream_id;

 header = sst_dsp_shim_read64_unlocked(sst, SST_IPCD);
 msg_id = sst_byt_header_msg_id(header);

 switch (msg_id) {
 case 128:
  stream_id = sst_byt_header_str_id(header);
  stream = sst_byt_get_stream(byt, stream_id);
  if (stream && stream->running && stream->notify_position) {
   spin_unlock_irqrestore(&sst->spinlock, *flags);
   stream->notify_position(stream, stream->pdata);
   spin_lock_irqsave(&sst->spinlock, *flags);
  }
  break;
 case 129:
  sst_byt_fw_ready(byt, header);
  break;
 }

 return 1;
}
