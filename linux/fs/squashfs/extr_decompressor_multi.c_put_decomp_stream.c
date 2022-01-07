
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_stream {int wait; int mutex; int strm_list; } ;
struct decomp_stream {int list; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void put_decomp_stream(struct decomp_stream *decomp_strm,
    struct squashfs_stream *stream)
{
 mutex_lock(&stream->mutex);
 list_add(&decomp_strm->list, &stream->strm_list);
 mutex_unlock(&stream->mutex);
 wake_up(&stream->wait);
}
