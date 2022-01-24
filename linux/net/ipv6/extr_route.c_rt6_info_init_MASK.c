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
struct dst_entry {int dummy; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_uncached; struct dst_entry dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rt6_info *rt)
{
	struct dst_entry *dst = &rt->dst;

	FUNC1(dst + 1, 0, sizeof(*rt) - sizeof(*dst));
	FUNC0(&rt->rt6i_uncached);
}