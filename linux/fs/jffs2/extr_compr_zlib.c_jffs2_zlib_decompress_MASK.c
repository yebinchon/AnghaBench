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
typedef  int uint32_t ;
struct TYPE_5__ {unsigned char* next_in; int avail_in; unsigned char* next_out; int avail_out; scalar_t__ total_out; scalar_t__ total_in; } ;

/* Variables and functions */
 int MAX_WBITS ; 
 unsigned char PRESET_DICT ; 
 unsigned char Z_DEFLATED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 TYPE_1__ inf_strm ; 
 int /*<<< orphan*/  inflate_mutex ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(unsigned char *data_in,
				 unsigned char *cpage_out,
				 uint32_t srclen, uint32_t destlen)
{
	int ret;
	int wbits = MAX_WBITS;

	FUNC1(&inflate_mutex);

	inf_strm.next_in = data_in;
	inf_strm.avail_in = srclen;
	inf_strm.total_in = 0;

	inf_strm.next_out = cpage_out;
	inf_strm.avail_out = destlen;
	inf_strm.total_out = 0;

	/* If it's deflate, and it's got no preset dictionary, then
	   we can tell zlib to skip the adler32 check. */
	if (srclen > 2 && !(data_in[1] & PRESET_DICT) &&
	    ((data_in[0] & 0x0f) == Z_DEFLATED) &&
	    !(((data_in[0]<<8) + data_in[1]) % 31)) {

		FUNC0(2, "inflate skipping adler32\n");
		wbits = -((data_in[0] >> 4) + 8);
		inf_strm.next_in += 2;
		inf_strm.avail_in -= 2;
	} else {
		/* Let this remain D1 for now -- it should never happen */
		FUNC0(1, "inflate not skipping adler32\n");
	}


	if (Z_OK != FUNC7(&inf_strm, wbits)) {
		FUNC4("inflateInit failed\n");
		FUNC2(&inflate_mutex);
		return 1;
	}

	while((ret = FUNC5(&inf_strm, Z_FINISH)) == Z_OK)
		;
	if (ret != Z_STREAM_END) {
		FUNC3("inflate returned %d\n", ret);
	}
	FUNC6(&inf_strm);
	FUNC2(&inflate_mutex);
	return 0;
}