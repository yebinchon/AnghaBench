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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static size_t FUNC4(const char **line, unsigned char **buf,
				 size_t *buf_len)
{
	size_t bytes_read = 0;
	unsigned char *chunk_start = *buf;

	/* Read bytes */
	while (*buf_len > 0) {
		char c1, c2;

		/* Get 2 hex digits */
		c1 = *(*line)++;
		if (!FUNC3(c1))
			break;
		c2 = *(*line)++;
		if (!FUNC3(c2))
			break;

		/* Store byte and advance buf */
		**buf = (FUNC1(c1) << 4) | FUNC1(c2);
		(*buf)++;
		(*buf_len)--;
		bytes_read++;

		/* End of chunk? */
		if (FUNC2(**line))
			break;
	}

	/*
	 * objdump will display raw insn as LE if code endian
	 * is LE and bytes_per_chunk > 1. In that case reverse
	 * the chunk we just read.
	 *
	 * see disassemble_bytes() at binutils/objdump.c for details
	 * how objdump chooses display endian)
	 */
	if (bytes_read > 1 && !FUNC0()) {
		unsigned char *chunk_end = chunk_start + bytes_read - 1;
		unsigned char tmp;

		while (chunk_start < chunk_end) {
			tmp = *chunk_start;
			*chunk_start = *chunk_end;
			*chunk_end = tmp;
			chunk_start++;
			chunk_end--;
		}
	}

	return bytes_read;
}