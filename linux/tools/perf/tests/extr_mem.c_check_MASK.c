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
typedef  union perf_mem_data_src {int dummy; } perf_mem_data_src ;
struct mem_info {union perf_mem_data_src data_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,int,struct mem_info*) ; 
 int FUNC2 (char*,int,struct mem_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(union perf_mem_data_src data_src,
		  const char *string)
{
	char out[100];
	char failure[100];
	struct mem_info mi = { .data_src = data_src };

	int n;

	n = FUNC2(out, sizeof out, &mi);
	n += FUNC1(out + n, sizeof out - n, &mi);
	FUNC3(failure, sizeof failure, "unexpected %s", out);
	FUNC0(failure, !FUNC4(string, out));
	return 0;
}