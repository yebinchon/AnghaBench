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
struct xa_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct xa_state*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct xa_state*) ; 
 void* FUNC5 (struct xa_state*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct xa_state*) ; 

__attribute__((used)) static void FUNC7(struct xa_state *xas, void *entry)
{
	void *old;

	FUNC0(FUNC1(entry));
	FUNC4(xas);
	FUNC3(xas);
	old = FUNC5(xas, entry);
	FUNC6(xas);
	FUNC0(!FUNC1(old));
	FUNC2(xas, entry, false);
}