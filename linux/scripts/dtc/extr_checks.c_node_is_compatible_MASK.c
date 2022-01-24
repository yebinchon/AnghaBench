#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* val; int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int dummy; } ;

/* Variables and functions */
 struct property* FUNC0 (struct node*,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 

__attribute__((used)) static bool FUNC3(struct node *node, const char *compat)
{
	struct property *prop;
	const char *str, *end;

	prop = FUNC0(node, "compatible");
	if (!prop)
		return false;

	for (str = prop->val.val, end = str + prop->val.len; str < end;
	     str += FUNC2(str, end - str) + 1) {
		if (FUNC1(str, compat))
			return true;
	}
	return false;
}