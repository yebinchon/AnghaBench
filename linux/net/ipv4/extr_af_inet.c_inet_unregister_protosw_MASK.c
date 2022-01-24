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
struct inet_protosw {int flags; int /*<<< orphan*/  list; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int INET_PROTOSW_PERMANENT ; 
 int /*<<< orphan*/  inetsw_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct inet_protosw *p)
{
	if (INET_PROTOSW_PERMANENT & p->flags) {
		FUNC1("Attempt to unregister permanent protocol %d\n",
		       p->protocol);
	} else {
		FUNC2(&inetsw_lock);
		FUNC0(&p->list);
		FUNC3(&inetsw_lock);

		FUNC4();
	}
}