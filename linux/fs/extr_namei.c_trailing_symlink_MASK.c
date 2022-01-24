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
struct nameidata {TYPE_1__* stack; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 char* FUNC1 (struct nameidata*) ; 
 int FUNC2 (struct nameidata*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static const char *FUNC4(struct nameidata *nd)
{
	const char *s;
	int error = FUNC2(nd);
	if (FUNC3(error))
		return FUNC0(error);
	nd->flags |= LOOKUP_PARENT;
	nd->stack[0].name = NULL;
	s = FUNC1(nd);
	return s ? s : "";
}