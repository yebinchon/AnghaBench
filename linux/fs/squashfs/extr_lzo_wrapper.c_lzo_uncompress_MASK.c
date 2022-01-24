#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct squashfs_sb_info {scalar_t__ devblksize; } ;
struct squashfs_page_actor {size_t length; } ;
struct squashfs_lzo {void* output; void* input; } ;
struct buffer_head {void* b_data; } ;

/* Variables and functions */
 int EIO ; 
 int LZO_E_OK ; 
 int PAGE_SIZE ; 
 int FUNC0 (void*,size_t,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct squashfs_page_actor*) ; 
 void* FUNC5 (struct squashfs_page_actor*) ; 
 void* FUNC6 (struct squashfs_page_actor*) ; 

__attribute__((used)) static int FUNC7(struct squashfs_sb_info *msblk, void *strm,
	struct buffer_head **bh, int b, int offset, int length,
	struct squashfs_page_actor *output)
{
	struct squashfs_lzo *stream = strm;
	void *buff = stream->input, *data;
	int avail, i, bytes = length, res;
	size_t out_len = output->length;

	for (i = 0; i < b; i++) {
		avail = FUNC2(bytes, msblk->devblksize - offset);
		FUNC1(buff, bh[i]->b_data + offset, avail);
		buff += avail;
		bytes -= avail;
		offset = 0;
		FUNC3(bh[i]);
	}

	res = FUNC0(stream->input, (size_t)length,
					stream->output, &out_len);
	if (res != LZO_E_OK)
		goto failed;

	res = bytes = (int)out_len;
	data = FUNC5(output);
	buff = stream->output;
	while (data) {
		if (bytes <= PAGE_SIZE) {
			FUNC1(data, buff, bytes);
			break;
		} else {
			FUNC1(data, buff, PAGE_SIZE);
			buff += PAGE_SIZE;
			bytes -= PAGE_SIZE;
			data = FUNC6(output);
		}
	}
	FUNC4(output);

	return res;

failed:
	return -EIO;
}