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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *msg, u32 attr, u16 ifmodes)
{
	struct nlattr *nl_modes = FUNC1(msg, attr);
	int i;

	if (!nl_modes)
		goto nla_put_failure;

	i = 0;
	while (ifmodes) {
		if ((ifmodes & 1) && FUNC2(msg, i))
			goto nla_put_failure;
		ifmodes >>= 1;
		i++;
	}

	FUNC0(msg, nl_modes);
	return 0;

nla_put_failure:
	return -ENOBUFS;
}