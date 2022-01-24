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
struct nlattr {int nla_type; int /*<<< orphan*/  nla_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct nlattr *mx, int len, int type, u32 value)
{
	struct nlattr *nla;

	nla = (struct nlattr *) ((char *) mx + len);
	nla->nla_type = type;
	nla->nla_len = FUNC0(4);
	*(u32 *) FUNC1(nla) = value;

	return len + FUNC2(4);
}