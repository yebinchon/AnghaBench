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
struct tcf_defact {int /*<<< orphan*/  tcfd_defdata; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SIMP_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tcf_defact *d, const struct nlattr *defdata)
{
	d->tcfd_defdata = FUNC0(SIMP_MAX_DATA, GFP_KERNEL);
	if (FUNC2(!d->tcfd_defdata))
		return -ENOMEM;
	FUNC1(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
	return 0;
}