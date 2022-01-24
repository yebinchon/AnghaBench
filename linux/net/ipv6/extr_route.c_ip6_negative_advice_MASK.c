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
struct rt6_info {int rt6i_flags; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int RTF_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt6_info*) ; 

__attribute__((used)) static struct dst_entry *FUNC5(struct dst_entry *dst)
{
	struct rt6_info *rt = (struct rt6_info *) dst;

	if (rt) {
		if (rt->rt6i_flags & RTF_CACHE) {
			FUNC1();
			if (FUNC3(rt)) {
				FUNC4(rt);
				dst = NULL;
			}
			FUNC2();
		} else {
			FUNC0(dst);
			dst = NULL;
		}
	}
	return dst;
}