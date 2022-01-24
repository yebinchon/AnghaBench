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
struct nlattr {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int attr,
				   const void *info,
				   unsigned int size, unsigned int user_size)
{
	unsigned int info_size, aligned_size = FUNC0(size);
	struct nlattr *nla;

	nla = FUNC4(skb, attr, aligned_size);
	if (!nla)
		return -1;

	info_size = user_size ? : size;
	FUNC1(FUNC3(nla), info, info_size);
	FUNC2(FUNC3(nla) + info_size, 0, aligned_size - info_size);

	return 0;
}