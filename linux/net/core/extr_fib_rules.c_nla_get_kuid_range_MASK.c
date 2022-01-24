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
struct nlattr {int dummy; } ;
struct fib_rule_uid_range {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct fib_kuid_range {void* end; void* start; } ;

/* Variables and functions */
 size_t FRA_UID_RANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nlattr*) ; 

__attribute__((used)) static struct fib_kuid_range FUNC3(struct nlattr **tb)
{
	struct fib_rule_uid_range *in;
	struct fib_kuid_range out;

	in = (struct fib_rule_uid_range *)FUNC2(tb[FRA_UID_RANGE]);

	out.start = FUNC1(FUNC0(), in->start);
	out.end = FUNC1(FUNC0(), in->end);

	return out;
}