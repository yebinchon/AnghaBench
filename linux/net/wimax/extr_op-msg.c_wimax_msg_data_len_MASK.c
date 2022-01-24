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
struct sk_buff {scalar_t__ head; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIMAX_GNL_MSG_DATA ; 
 void const* FUNC0 (struct nlattr*) ; 
 size_t FUNC1 (struct nlattr*) ; 
 struct nlattr* FUNC2 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

const void *FUNC4(struct sk_buff *msg, size_t *size)
{
	struct nlmsghdr *nlh = (void *) msg->head;
	struct nlattr *nla;

	nla = FUNC2(nlh, sizeof(struct genlmsghdr),
			      WIMAX_GNL_MSG_DATA);
	if (nla == NULL) {
		FUNC3("Cannot find attribute WIMAX_GNL_MSG_DATA\n");
		return NULL;
	}
	*size = FUNC1(nla);
	return FUNC0(nla);
}