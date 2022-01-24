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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 

const char *
FUNC3(struct trace_seq *p, const void *buf, int count,
		      size_t el_size)
{
	const char *ret = FUNC0(p);
	const char *prefix = "";
	void *ptr = (void *)buf;
	size_t buf_len = count * el_size;

	FUNC2(p, '{');

	while (ptr < buf + buf_len) {
		switch (el_size) {
		case 1:
			FUNC1(p, "%s0x%x", prefix,
					 *(u8 *)ptr);
			break;
		case 2:
			FUNC1(p, "%s0x%x", prefix,
					 *(u16 *)ptr);
			break;
		case 4:
			FUNC1(p, "%s0x%x", prefix,
					 *(u32 *)ptr);
			break;
		case 8:
			FUNC1(p, "%s0x%llx", prefix,
					 *(u64 *)ptr);
			break;
		default:
			FUNC1(p, "BAD SIZE:%zu 0x%x", el_size,
					 *(u8 *)ptr);
			el_size = 1;
		}
		prefix = ",";
		ptr += el_size;
	}

	FUNC2(p, '}');
	FUNC2(p, 0);

	return ret;
}