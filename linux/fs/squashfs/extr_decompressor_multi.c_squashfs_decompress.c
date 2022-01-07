
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_stream {int dummy; } ;
struct squashfs_sb_info {TYPE_1__* decompressor; struct squashfs_stream* stream; } ;
struct squashfs_page_actor {int dummy; } ;
struct decomp_stream {int stream; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int (* decompress ) (struct squashfs_sb_info*,int ,struct buffer_head**,int,int,int,struct squashfs_page_actor*) ;int name; } ;


 int ERROR (char*,int ) ;
 struct decomp_stream* get_decomp_stream (struct squashfs_sb_info*,struct squashfs_stream*) ;
 int put_decomp_stream (struct decomp_stream*,struct squashfs_stream*) ;
 int stub1 (struct squashfs_sb_info*,int ,struct buffer_head**,int,int,int,struct squashfs_page_actor*) ;

int squashfs_decompress(struct squashfs_sb_info *msblk, struct buffer_head **bh,
 int b, int offset, int length, struct squashfs_page_actor *output)
{
 int res;
 struct squashfs_stream *stream = msblk->stream;
 struct decomp_stream *decomp_stream = get_decomp_stream(msblk, stream);
 res = msblk->decompressor->decompress(msblk, decomp_stream->stream,
  bh, b, offset, length, output);
 put_decomp_stream(decomp_stream, stream);
 if (res < 0)
  ERROR("%s decompression failed, data probably corrupt\n",
   msblk->decompressor->name);
 return res;
}
