
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_stream {int mutex; int stream; } ;
struct squashfs_sb_info {TYPE_1__* decompressor; struct squashfs_stream* stream; } ;
struct squashfs_page_actor {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int (* decompress ) (struct squashfs_sb_info*,int ,struct buffer_head**,int,int,int,struct squashfs_page_actor*) ;int name; } ;


 int ERROR (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct squashfs_sb_info*,int ,struct buffer_head**,int,int,int,struct squashfs_page_actor*) ;

int squashfs_decompress(struct squashfs_sb_info *msblk, struct buffer_head **bh,
 int b, int offset, int length, struct squashfs_page_actor *output)
{
 int res;
 struct squashfs_stream *stream = msblk->stream;

 mutex_lock(&stream->mutex);
 res = msblk->decompressor->decompress(msblk, stream->stream, bh, b,
  offset, length, output);
 mutex_unlock(&stream->mutex);

 if (res < 0)
  ERROR("%s decompression failed, data probably corrupt\n",
   msblk->decompressor->name);

 return res;
}
