#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int in_pos; int in_size; scalar_t__ out_pos; scalar_t__ out_size; int /*<<< orphan*/ * out; scalar_t__ in; } ;
struct squashfs_xz {TYPE_1__ buf; int /*<<< orphan*/  state; } ;
struct squashfs_sb_info {scalar_t__ devblksize; } ;
struct squashfs_page_actor {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  enum xz_ret { ____Placeholder_xz_ret } xz_ret ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PAGE_SIZE ; 
 int XZ_OK ; 
 int XZ_STREAM_END ; 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC3 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC4 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct squashfs_sb_info *msblk, void *strm,
	struct buffer_head **bh, int b, int offset, int length,
	struct squashfs_page_actor *output)
{
	enum xz_ret xz_err;
	int avail, total = 0, k = 0;
	struct squashfs_xz *stream = strm;

	FUNC5(stream->state);
	stream->buf.in_pos = 0;
	stream->buf.in_size = 0;
	stream->buf.out_pos = 0;
	stream->buf.out_size = PAGE_SIZE;
	stream->buf.out = FUNC3(output);

	do {
		if (stream->buf.in_pos == stream->buf.in_size && k < b) {
			avail = FUNC0(length, msblk->devblksize - offset);
			length -= avail;
			stream->buf.in = bh[k]->b_data + offset;
			stream->buf.in_size = avail;
			stream->buf.in_pos = 0;
			offset = 0;
		}

		if (stream->buf.out_pos == stream->buf.out_size) {
			stream->buf.out = FUNC4(output);
			if (stream->buf.out != NULL) {
				stream->buf.out_pos = 0;
				total += PAGE_SIZE;
			}
		}

		xz_err = FUNC6(stream->state, &stream->buf);

		if (stream->buf.in_pos == stream->buf.in_size && k < b)
			FUNC1(bh[k++]);
	} while (xz_err == XZ_OK);

	FUNC2(output);

	if (xz_err != XZ_STREAM_END || k < b)
		goto out;

	return total + stream->buf.out_pos;

out:
	for (; k < b; k++)
		FUNC1(bh[k]);

	return -EIO;
}