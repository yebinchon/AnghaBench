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
typedef  int u32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* PERF_IP_FLAG_CHARS ; 
 int PERF_IP_FLAG_IN_TX ; 
 int PERF_IP_FLAG_TRACE_BEGIN ; 
 int PERF_IP_FLAG_TRACE_END ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(u32 flags, FILE *fp)
{
	const char *chars = PERF_IP_FLAG_CHARS;
	const int n = FUNC2(PERF_IP_FLAG_CHARS);
	bool in_tx = flags & PERF_IP_FLAG_IN_TX;
	const char *name = NULL;
	char str[33];
	int i, pos = 0;

	name = FUNC1(flags & ~PERF_IP_FLAG_IN_TX);
	if (name)
		return FUNC0(fp, "  %-15s%4s ", name, in_tx ? "(x)" : "");

	if (flags & PERF_IP_FLAG_TRACE_BEGIN) {
		name = FUNC1(flags & ~(PERF_IP_FLAG_IN_TX | PERF_IP_FLAG_TRACE_BEGIN));
		if (name)
			return FUNC0(fp, "  tr strt %-7s%4s ", name, in_tx ? "(x)" : "");
	}

	if (flags & PERF_IP_FLAG_TRACE_END) {
		name = FUNC1(flags & ~(PERF_IP_FLAG_IN_TX | PERF_IP_FLAG_TRACE_END));
		if (name)
			return FUNC0(fp, "  tr end  %-7s%4s ", name, in_tx ? "(x)" : "");
	}

	for (i = 0; i < n; i++, flags >>= 1) {
		if (flags & 1)
			str[pos++] = chars[i];
	}
	for (; i < 32; i++, flags >>= 1) {
		if (flags & 1)
			str[pos++] = '?';
	}
	str[pos] = 0;

	return FUNC0(fp, "  %-19s ", str);
}