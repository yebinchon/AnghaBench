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
typedef  int u8 ;
typedef  int u64 ;
struct sw842_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sw842_param*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct sw842_param *p, u64 *d, u8 n, u8 s)
{
	u64 tmp = 0;
	int ret;

	if (n <= s) {
		FUNC1("split_next_bits invalid n %u s %u\n", n, s);
		return -EINVAL;
	}

	ret = FUNC0(p, &tmp, n - s);
	if (ret)
		return ret;
	ret = FUNC0(p, d, s);
	if (ret)
		return ret;
	*d |= tmp << s;
	return 0;
}