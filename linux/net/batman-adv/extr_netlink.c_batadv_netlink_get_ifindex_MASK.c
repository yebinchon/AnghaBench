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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENL_HDRLEN ; 
 int FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 struct nlattr* FUNC2 (struct nlmsghdr const*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(const struct nlmsghdr *nlh, int attrtype)
{
	struct nlattr *attr = FUNC2(nlh, GENL_HDRLEN, attrtype);

	return (attr && FUNC1(attr) == sizeof(u32)) ? FUNC0(attr) : 0;
}