
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sst_byt_stream {int running; } ;
struct sst_byt {int dummy; } ;
struct TYPE_2__ {int header; } ;
struct ipc_message {TYPE_1__ tx; } ;







 struct sst_byt_stream* sst_byt_get_stream (struct sst_byt*,int) ;
 int sst_byt_header_msg_id (int ) ;
 int sst_byt_header_str_id (int ) ;

__attribute__((used)) static void sst_byt_stream_update(struct sst_byt *byt, struct ipc_message *msg)
{
 struct sst_byt_stream *stream;
 u64 header = msg->tx.header;
 u8 stream_id = sst_byt_header_str_id(header);
 u8 stream_msg = sst_byt_header_msg_id(header);

 stream = sst_byt_get_stream(byt, stream_id);
 if (stream == ((void*)0))
  return;

 switch (stream_msg) {
 case 132:
 case 130:
 case 131:
  stream->running = 0;
  break;
 case 128:
 case 129:
  stream->running = 1;
  break;
 }
}
