#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct crush_choose_arg {int dummy; } ;
struct TYPE_2__ {unsigned int size; int* items; int /*<<< orphan*/  hash; } ;
struct crush_bucket_straw2 {TYPE_1__ h; } ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __s64 ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 scalar_t__ S64_MIN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct crush_bucket_straw2 const*,struct crush_choose_arg const*) ; 
 scalar_t__* FUNC5 (struct crush_bucket_straw2 const*,struct crush_choose_arg const*,int) ; 

__attribute__((used)) static int FUNC6(const struct crush_bucket_straw2 *bucket,
				int x, int r,
				const struct crush_choose_arg *arg,
				int position)
{
	unsigned int i, high = 0;
	unsigned int u;
	__s64 ln, draw, high_draw = 0;
	__u32 *weights = FUNC5(bucket, arg, position);
	__s32 *ids = FUNC4(bucket, arg);

	for (i = 0; i < bucket->h.size; i++) {
		FUNC3("weight 0x%x item %d\n", weights[i], ids[i]);
		if (weights[i]) {
			u = FUNC0(bucket->h.hash, x, ids[i], r);
			u &= 0xffff;

			/*
			 * for some reason slightly less than 0x10000 produces
			 * a slightly more accurate distribution... probably a
			 * rounding effect.
			 *
			 * the natural log lookup table maps [0,0xffff]
			 * (corresponding to real numbers [1/0x10000, 1] to
			 * [0, 0xffffffffffff] (corresponding to real numbers
			 * [-11.090355,0]).
			 */
			ln = FUNC1(u) - 0x1000000000000ll;

			/*
			 * divide by 16.16 fixed-point weight.  note
			 * that the ln value is negative, so a larger
			 * weight means a larger (less negative) value
			 * for draw.
			 */
			draw = FUNC2(ln, weights[i]);
		} else {
			draw = S64_MIN;
		}

		if (i == 0 || draw > high_draw) {
			high = i;
			high_draw = draw;
		}
	}

	return bucket->h.items[high];
}