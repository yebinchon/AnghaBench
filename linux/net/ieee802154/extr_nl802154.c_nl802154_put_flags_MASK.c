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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *msg, int attr, u32 mask)
{
	struct nlattr *nl_flags = FUNC1(msg, attr);
	int i;

	if (!nl_flags)
		return -ENOBUFS;

	i = 0;
	while (mask) {
		if ((mask & 1) && FUNC2(msg, i))
			return -ENOBUFS;

		mask >>= 1;
		i++;
	}

	FUNC0(msg, nl_flags);
	return 0;
}