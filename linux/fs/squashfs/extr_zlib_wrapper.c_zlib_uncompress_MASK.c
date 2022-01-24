#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ avail_out; scalar_t__ avail_in; int total_out; int /*<<< orphan*/ * next_out; scalar_t__ next_in; } ;
typedef  TYPE_1__ z_stream ;
struct squashfs_sb_info {scalar_t__ devblksize; } ;
struct squashfs_page_actor {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 void* PAGE_SIZE ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC3 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC4 (struct squashfs_page_actor*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct squashfs_sb_info *msblk, void *strm,
	struct buffer_head **bh, int b, int offset, int length,
	struct squashfs_page_actor *output)
{
	int zlib_err, zlib_init = 0, k = 0;
	z_stream *stream = strm;

	stream->avail_out = PAGE_SIZE;
	stream->next_out = FUNC3(output);
	stream->avail_in = 0;

	do {
		if (stream->avail_in == 0 && k < b) {
			int avail = FUNC0(length, msblk->devblksize - offset);
			length -= avail;
			stream->next_in = bh[k]->b_data + offset;
			stream->avail_in = avail;
			offset = 0;
		}

		if (stream->avail_out == 0) {
			stream->next_out = FUNC4(output);
			if (stream->next_out != NULL)
				stream->avail_out = PAGE_SIZE;
		}

		if (!zlib_init) {
			zlib_err = FUNC7(stream);
			if (zlib_err != Z_OK) {
				FUNC2(output);
				goto out;
			}
			zlib_init = 1;
		}

		zlib_err = FUNC5(stream, Z_SYNC_FLUSH);

		if (stream->avail_in == 0 && k < b)
			FUNC1(bh[k++]);
	} while (zlib_err == Z_OK);

	FUNC2(output);

	if (zlib_err != Z_STREAM_END)
		goto out;

	zlib_err = FUNC6(stream);
	if (zlib_err != Z_OK)
		goto out;

	if (k < b)
		goto out;

	return stream->total_out;

out:
	for (; k < b; k++)
		FUNC1(bh[k]);

	return -EIO;
}