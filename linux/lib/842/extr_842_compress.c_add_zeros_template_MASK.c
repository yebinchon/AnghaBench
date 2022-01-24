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
struct sw842_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_BITS ; 
 int /*<<< orphan*/  OP_ZEROS ; 
 int FUNC0 (struct sw842_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ sw842_template_counts ; 
 int /*<<< orphan*/  template_zeros_count ; 

__attribute__((used)) static int FUNC2(struct sw842_param *p)
{
	int ret = FUNC0(p, OP_ZEROS, OP_BITS);

	if (ret)
		return ret;

	if (sw842_template_counts)
		FUNC1(&template_zeros_count);

	return 0;
}