
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_pos; int in_size; scalar_t__ out_pos; scalar_t__ out_size; int * out; scalar_t__ in; } ;
struct squashfs_xz {TYPE_1__ buf; int state; } ;
struct squashfs_sb_info {scalar_t__ devblksize; } ;
struct squashfs_page_actor {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int EIO ;
 scalar_t__ PAGE_SIZE ;
 int XZ_OK ;
 int XZ_STREAM_END ;
 int min (int,scalar_t__) ;
 int put_bh (struct buffer_head*) ;
 int squashfs_finish_page (struct squashfs_page_actor*) ;
 int * squashfs_first_page (struct squashfs_page_actor*) ;
 int * squashfs_next_page (struct squashfs_page_actor*) ;
 int xz_dec_reset (int ) ;
 int xz_dec_run (int ,TYPE_1__*) ;

__attribute__((used)) static int squashfs_xz_uncompress(struct squashfs_sb_info *msblk, void *strm,
 struct buffer_head **bh, int b, int offset, int length,
 struct squashfs_page_actor *output)
{
 enum xz_ret xz_err;
 int avail, total = 0, k = 0;
 struct squashfs_xz *stream = strm;

 xz_dec_reset(stream->state);
 stream->buf.in_pos = 0;
 stream->buf.in_size = 0;
 stream->buf.out_pos = 0;
 stream->buf.out_size = PAGE_SIZE;
 stream->buf.out = squashfs_first_page(output);

 do {
  if (stream->buf.in_pos == stream->buf.in_size && k < b) {
   avail = min(length, msblk->devblksize - offset);
   length -= avail;
   stream->buf.in = bh[k]->b_data + offset;
   stream->buf.in_size = avail;
   stream->buf.in_pos = 0;
   offset = 0;
  }

  if (stream->buf.out_pos == stream->buf.out_size) {
   stream->buf.out = squashfs_next_page(output);
   if (stream->buf.out != ((void*)0)) {
    stream->buf.out_pos = 0;
    total += PAGE_SIZE;
   }
  }

  xz_err = xz_dec_run(stream->state, &stream->buf);

  if (stream->buf.in_pos == stream->buf.in_size && k < b)
   put_bh(bh[k++]);
 } while (xz_err == XZ_OK);

 squashfs_finish_page(output);

 if (xz_err != XZ_STREAM_END || k < b)
  goto out;

 return total + stream->buf.out_pos;

out:
 for (; k < b; k++)
  put_bh(bh[k]);

 return -EIO;
}
