
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ lpe; } ;
struct sst_dsp {TYPE_1__ addr; } ;
struct sst_byt_tstamp {int ring_buffer_counter; } ;
struct sst_byt_stream {int str_id; } ;
struct sst_byt {struct sst_dsp* dsp; } ;
typedef int fw_tstamp ;


 scalar_t__ SST_BYT_TIMESTAMP_OFFSET ;
 int do_div (int ,int) ;
 int memcpy_fromio (struct sst_byt_tstamp*,scalar_t__,int) ;

int sst_byt_get_dsp_position(struct sst_byt *byt,
        struct sst_byt_stream *stream, int buffer_size)
{
 struct sst_dsp *sst = byt->dsp;
 struct sst_byt_tstamp fw_tstamp;
 u8 str_id = stream->str_id;
 u32 tstamp_offset;

 tstamp_offset = SST_BYT_TIMESTAMP_OFFSET + str_id * sizeof(fw_tstamp);
 memcpy_fromio(&fw_tstamp,
        sst->addr.lpe + tstamp_offset, sizeof(fw_tstamp));

 return do_div(fw_tstamp.ring_buffer_counter, buffer_size);
}
