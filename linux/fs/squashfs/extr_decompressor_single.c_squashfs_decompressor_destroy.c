
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_stream {int stream; } ;
struct squashfs_sb_info {TYPE_1__* decompressor; struct squashfs_stream* stream; } ;
struct TYPE_2__ {int (* free ) (int ) ;} ;


 int kfree (struct squashfs_stream*) ;
 int stub1 (int ) ;

void squashfs_decompressor_destroy(struct squashfs_sb_info *msblk)
{
 struct squashfs_stream *stream = msblk->stream;

 if (stream) {
  msblk->decompressor->free(stream->stream);
  kfree(stream);
 }
}
