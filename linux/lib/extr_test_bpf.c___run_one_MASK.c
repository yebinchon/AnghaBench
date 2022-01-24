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
typedef  scalar_t__ u64 ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog const*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(const struct bpf_prog *fp, const void *data,
		     int runs, u64 *duration)
{
	u64 start, finish;
	int ret = 0, i;

	FUNC3();
	start = FUNC2();

	for (i = 0; i < runs; i++)
		ret = FUNC0(fp, data);

	finish = FUNC2();
	FUNC4();

	*duration = finish - start;
	FUNC1(*duration, runs);

	return ret;
}