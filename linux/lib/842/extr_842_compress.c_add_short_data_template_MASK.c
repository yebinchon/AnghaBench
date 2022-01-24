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
struct sw842_param {int* in; } ;

/* Variables and functions */
 int EINVAL ; 
 int OP_BITS ; 
 int OP_SHORT_DATA ; 
 int SHORT_DATA_BITS ; 
 int SHORT_DATA_BITS_MAX ; 
 int FUNC0 (struct sw842_param*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ sw842_template_counts ; 
 int /*<<< orphan*/  template_short_data_count ; 

__attribute__((used)) static int FUNC2(struct sw842_param *p, u8 b)
{
	int ret, i;

	if (!b || b > SHORT_DATA_BITS_MAX)
		return -EINVAL;

	ret = FUNC0(p, OP_SHORT_DATA, OP_BITS);
	if (ret)
		return ret;

	ret = FUNC0(p, b, SHORT_DATA_BITS);
	if (ret)
		return ret;

	for (i = 0; i < b; i++) {
		ret = FUNC0(p, p->in[i], 8);
		if (ret)
			return ret;
	}

	if (sw842_template_counts)
		FUNC1(&template_short_data_count);

	return 0;
}