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
struct function {char* name; char* desc; } ;
struct bench_mem_info {double (* do_gettimeofday ) (struct function const*,size_t,void*,void*) ;scalar_t__ (* do_cycles ) (struct function const*,size_t,void*,void*) ;scalar_t__ alloc_src; struct function* functions; } ;

/* Variables and functions */
#define  BENCH_FORMAT_DEFAULT 129 
#define  BENCH_FORMAT_SIMPLE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bench_format ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* size_str ; 
 scalar_t__ FUNC4 (struct function const*,size_t,void*,void*) ; 
 double FUNC5 (struct function const*,size_t,void*,void*) ; 
 scalar_t__ use_cycles ; 
 void* FUNC6 (size_t) ; 

__attribute__((used)) static void FUNC7(struct bench_mem_info *info, int r_idx, size_t size, double size_total)
{
	const struct function *r = &info->functions[r_idx];
	double result_bps = 0.0;
	u64 result_cycles = 0;
	void *src = NULL, *dst = FUNC6(size);

	FUNC3("# function '%s' (%s)\n", r->name, r->desc);

	if (dst == NULL)
		goto out_alloc_failed;

	if (info->alloc_src) {
		src = FUNC6(size);
		if (src == NULL)
			goto out_alloc_failed;
	}

	if (bench_format == BENCH_FORMAT_DEFAULT)
		FUNC3("# Copying %s bytes ...\n\n", size_str);

	if (use_cycles) {
		result_cycles = info->do_cycles(r, size, src, dst);
	} else {
		result_bps = info->do_gettimeofday(r, size, src, dst);
	}

	switch (bench_format) {
	case BENCH_FORMAT_DEFAULT:
		if (use_cycles) {
			FUNC3(" %14lf cycles/byte\n", (double)result_cycles/size_total);
		} else {
			FUNC2(result_bps);
		}
		break;

	case BENCH_FORMAT_SIMPLE:
		if (use_cycles) {
			FUNC3("%lf\n", (double)result_cycles/size_total);
		} else {
			FUNC3("%lf\n", result_bps);
		}
		break;

	default:
		FUNC0(1);
		break;
	}

out_free:
	FUNC1(src);
	FUNC1(dst);
	return;
out_alloc_failed:
	FUNC3("# Memory allocation failed - maybe size (%s) is too large?\n", size_str);
	goto out_free;
}