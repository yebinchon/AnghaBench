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
struct TYPE_5__ {unsigned char* next_out; int avail_out; int /*<<< orphan*/  avail_in; void* next_in; void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 scalar_t__ MAX_WBITS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
#define  Z_DATA_ERROR 130 
#define  Z_MEM_ERROR 129 
#define  Z_NEED_DICT 128 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 void* Z_NULL ; 
 scalar_t__ Z_OK ; 
 int Z_STREAM_END ; 
 int Z_STREAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,unsigned char*,int) ; 

int FUNC9(const char *input, int output_fd)
{
	int ret = Z_STREAM_ERROR;
	int input_fd;
	void *ptr;
	int len;
	struct stat stbuf;
	unsigned char buf[CHUNK_SIZE];
	z_stream zs = {
		.zalloc		= Z_NULL,
		.zfree		= Z_NULL,
		.opaque		= Z_NULL,
		.avail_in	= 0,
		.next_in	= Z_NULL,
	};

	input_fd = FUNC7(input, O_RDONLY);
	if (input_fd < 0)
		return -1;

	if (FUNC1(input_fd, &stbuf) < 0)
		goto out_close;

	ptr = FUNC5(NULL, stbuf.st_size, PROT_READ, MAP_PRIVATE, input_fd, 0);
	if (ptr == MAP_FAILED)
		goto out_close;

	if (FUNC4(&zs, 16 + MAX_WBITS) != Z_OK)
		goto out_unmap;

	zs.next_in = ptr;
	zs.avail_in = stbuf.st_size;

	do {
		zs.next_out = buf;
		zs.avail_out = CHUNK_SIZE;

		ret = FUNC2(&zs, Z_NO_FLUSH);
		switch (ret) {
		case Z_NEED_DICT:
			ret = Z_DATA_ERROR;
			/* fall through */
		case Z_DATA_ERROR:
		case Z_MEM_ERROR:
			goto out;
		default:
			break;
		}

		len = CHUNK_SIZE - zs.avail_out;
		if (FUNC8(output_fd, buf, len) != len) {
			ret = Z_DATA_ERROR;
			goto out;
		}

	} while (ret != Z_STREAM_END);

out:
	FUNC3(&zs);
out_unmap:
	FUNC6(ptr, stbuf.st_size);
out_close:
	FUNC0(input_fd);

	return ret == Z_STREAM_END ? 0 : -1;
}