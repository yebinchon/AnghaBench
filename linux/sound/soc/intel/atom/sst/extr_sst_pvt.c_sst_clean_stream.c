
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int lock; scalar_t__ cumm_bytes; void* prev; void* status; } ;


 void* STREAM_UN_INIT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sst_clean_stream(struct stream_info *stream)
{
 stream->status = STREAM_UN_INIT;
 stream->prev = STREAM_UN_INIT;
 mutex_lock(&stream->lock);
 stream->cumm_bytes = 0;
 mutex_unlock(&stream->lock);
}
