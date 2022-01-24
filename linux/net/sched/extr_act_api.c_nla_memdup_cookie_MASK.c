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
struct tc_cookie {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_ACT_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (struct tc_cookie*) ; 
 struct tc_cookie* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tc_cookie *FUNC4(struct nlattr **tb)
{
	struct tc_cookie *c = FUNC1(sizeof(*c), GFP_KERNEL);
	if (!c)
		return NULL;

	c->data = FUNC3(tb[TCA_ACT_COOKIE], GFP_KERNEL);
	if (!c->data) {
		FUNC0(c);
		return NULL;
	}
	c->len = FUNC2(tb[TCA_ACT_COOKIE]);

	return c;
}