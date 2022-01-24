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
struct saved {int dummy; } ;
struct nameidata {int flags; struct saved* stack; int /*<<< orphan*/  internal; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LOOKUP_RCU ; 
 int /*<<< orphan*/  MAXSYMLINKS ; 
 struct saved* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saved*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct nameidata *nd)
{
	struct saved *p;

	if (nd->flags & LOOKUP_RCU) {
		p= FUNC0(MAXSYMLINKS, sizeof(struct saved),
				  GFP_ATOMIC);
		if (FUNC2(!p))
			return -ECHILD;
	} else {
		p= FUNC0(MAXSYMLINKS, sizeof(struct saved),
				  GFP_KERNEL);
		if (FUNC2(!p))
			return -ENOMEM;
	}
	FUNC1(p, nd->internal, sizeof(nd->internal));
	nd->stack = p;
	return 0;
}