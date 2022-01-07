
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_pcm_stream_info {int is_open; scalar_t__ num_pages; int * pages; scalar_t__ buffer_sz; int * buffer; int shbuf; int evt_pair; int hw_ptr; scalar_t__ out_frames; scalar_t__ be_cur_frame; } ;


 int atomic_set (int *,int ) ;
 int memset (int *,int ,int) ;
 int xen_snd_front_evtchnl_pair_clear (int ) ;

__attribute__((used)) static void stream_clear(struct xen_snd_front_pcm_stream_info *stream)
{
 stream->is_open = 0;
 stream->be_cur_frame = 0;
 stream->out_frames = 0;
 atomic_set(&stream->hw_ptr, 0);
 xen_snd_front_evtchnl_pair_clear(stream->evt_pair);
 memset(&stream->shbuf, 0, sizeof(stream->shbuf));
 stream->buffer = ((void*)0);
 stream->buffer_sz = 0;
 stream->pages = ((void*)0);
 stream->num_pages = 0;
}
