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
struct genl_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GENLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff **pskb,
					    struct genl_info *info)
{
	int err;

	if (*pskb) {
		err = FUNC1(*pskb, info);
		if (err)
			return err;
	}
	*pskb = FUNC0(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!*pskb)
		return -ENOMEM;
	return 0;
}