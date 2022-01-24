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
typedef  scalar_t__ u8 ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NF_INET_PRE_ROUTING ; 
 size_t TCA_EM_IPT_HOOK ; 
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct nlattr **tb, u8 mrev)
{
	if (mrev != 0) {
		FUNC1("only policy match revision 0 supported");
		return -EINVAL;
	}

	if (FUNC0(tb[TCA_EM_IPT_HOOK]) != NF_INET_PRE_ROUTING) {
		FUNC1("policy can only be matched on NF_INET_PRE_ROUTING");
		return -EINVAL;
	}

	return 0;
}