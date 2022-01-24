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
typedef  int /*<<< orphan*/  u8 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
#define  DUMP_PREFIX_ADDRESS 129 
#define  DUMP_PREFIX_OFFSET 128 
 int FUNC0 (int /*<<< orphan*/  const*,int,int,int,char*,size_t,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int) ; 
 size_t FUNC3 (struct seq_file*,char**) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char) ; 

void FUNC7(struct seq_file *m, const char *prefix_str, int prefix_type,
		  int rowsize, int groupsize, const void *buf, size_t len,
		  bool ascii)
{
	const u8 *ptr = buf;
	int i, linelen, remaining = len;
	char *buffer;
	size_t size;
	int ret;

	if (rowsize != 16 && rowsize != 32)
		rowsize = 16;

	for (i = 0; i < len && !FUNC4(m); i += rowsize) {
		linelen = FUNC1(remaining, rowsize);
		remaining -= rowsize;

		switch (prefix_type) {
		case DUMP_PREFIX_ADDRESS:
			FUNC5(m, "%s%p: ", prefix_str, ptr + i);
			break;
		case DUMP_PREFIX_OFFSET:
			FUNC5(m, "%s%.8x: ", prefix_str, i);
			break;
		default:
			FUNC5(m, "%s", prefix_str);
			break;
		}

		size = FUNC3(m, &buffer);
		ret = FUNC0(ptr + i, linelen, rowsize, groupsize,
					 buffer, size, ascii);
		FUNC2(m, ret < size ? ret : -1);

		FUNC6(m, '\n');
	}
}