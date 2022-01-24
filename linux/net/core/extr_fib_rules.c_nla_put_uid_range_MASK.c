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
struct sk_buff {int dummy; } ;
struct fib_rule_uid_range {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct fib_kuid_range {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FRA_UID_RANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct fib_rule_uid_range*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct fib_kuid_range *range)
{
	struct fib_rule_uid_range out = {
		FUNC1(FUNC0(), range->start),
		FUNC1(FUNC0(), range->end)
	};

	return FUNC2(skb, FRA_UID_RANGE, sizeof(out), &out);
}