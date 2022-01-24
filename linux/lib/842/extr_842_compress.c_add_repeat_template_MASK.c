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
typedef  scalar_t__ u8 ;
struct sw842_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OP_BITS ; 
 scalar_t__ OP_REPEAT ; 
 int /*<<< orphan*/  REPEAT_BITS ; 
 scalar_t__ REPEAT_BITS_MAX ; 
 int FUNC0 (struct sw842_param*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ sw842_template_counts ; 
 int /*<<< orphan*/  template_repeat_count ; 

__attribute__((used)) static int FUNC2(struct sw842_param *p, u8 r)
{
	int ret;

	/* repeat param is 0-based */
	if (!r || --r > REPEAT_BITS_MAX)
		return -EINVAL;

	ret = FUNC0(p, OP_REPEAT, OP_BITS);
	if (ret)
		return ret;

	ret = FUNC0(p, r, REPEAT_BITS);
	if (ret)
		return ret;

	if (sw842_template_counts)
		FUNC1(&template_repeat_count);

	return 0;
}