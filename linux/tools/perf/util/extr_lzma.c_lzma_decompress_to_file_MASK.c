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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ avail_in; int avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; } ;
typedef  TYPE_1__ lzma_stream ;
typedef  scalar_t__ lzma_ret ;
typedef  int /*<<< orphan*/  lzma_action ;
typedef  int /*<<< orphan*/  buf_out ;
typedef  int /*<<< orphan*/  buf_in ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  LZMA_CONCATENATED ; 
 int /*<<< orphan*/  LZMA_FINISH ; 
 scalar_t__ LZMA_OK ; 
 int /*<<< orphan*/  LZMA_RUN ; 
 scalar_t__ LZMA_STREAM_END ; 
 TYPE_1__ LZMA_STREAM_INIT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC11(const char *input, int output_fd)
{
	lzma_action action = LZMA_RUN;
	lzma_stream strm   = LZMA_STREAM_INIT;
	lzma_ret ret;
	int err = -1;

	u8 buf_in[BUFSIZE];
	u8 buf_out[BUFSIZE];
	FILE *infile;

	infile = FUNC3(input, "rb");
	if (!infile) {
		FUNC8("lzma: fopen failed on %s: '%s'\n",
		       input, FUNC9(errno));
		return -1;
	}

	ret = FUNC6(&strm, UINT64_MAX, LZMA_CONCATENATED);
	if (ret != LZMA_OK) {
		FUNC8("lzma: lzma_stream_decoder failed %s (%d)\n",
			FUNC7(ret), ret);
		goto err_fclose;
	}

	strm.next_in   = NULL;
	strm.avail_in  = 0;
	strm.next_out  = buf_out;
	strm.avail_out = sizeof(buf_out);

	while (1) {
		if (strm.avail_in == 0 && !FUNC1(infile)) {
			strm.next_in  = buf_in;
			strm.avail_in = FUNC4(buf_in, 1, sizeof(buf_in), infile);

			if (FUNC2(infile)) {
				FUNC8("lzma: read error: %s\n", FUNC9(errno));
				goto err_fclose;
			}

			if (FUNC1(infile))
				action = LZMA_FINISH;
		}

		ret = FUNC5(&strm, action);

		if (strm.avail_out == 0 || ret == LZMA_STREAM_END) {
			ssize_t write_size = sizeof(buf_out) - strm.avail_out;

			if (FUNC10(output_fd, buf_out, write_size) != write_size) {
				FUNC8("lzma: write error: %s\n", FUNC9(errno));
				goto err_fclose;
			}

			strm.next_out  = buf_out;
			strm.avail_out = sizeof(buf_out);
		}

		if (ret != LZMA_OK) {
			if (ret == LZMA_STREAM_END)
				break;

			FUNC8("lzma: failed %s\n", FUNC7(ret));
			goto err_fclose;
		}
	}

	err = 0;
err_fclose:
	FUNC0(infile);
	return err;
}