#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct xa_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;
struct wait_exceptional_entry_queue {TYPE_1__ wait; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int) ; 
 void* XA_RETRY_ENTRY ; 
 unsigned int FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xa_state*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  wake_exceptional_entry_func ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct xa_state*) ; 

__attribute__((used)) static void *FUNC13(struct xa_state *xas, unsigned int order)
{
	void *entry;
	struct wait_exceptional_entry_queue ewait;
	wait_queue_head_t *wq;

	FUNC5(&ewait.wait);
	ewait.wait.func = wake_exceptional_entry_func;

	for (;;) {
		entry = FUNC9(xas);
		if (!entry || FUNC0(!FUNC8(entry)))
			return entry;
		if (FUNC1(entry) < order)
			return XA_RETRY_ENTRY;
		if (!FUNC3(entry))
			return entry;

		wq = FUNC2(xas, entry, &ewait.key);
		FUNC6(wq, &ewait.wait,
					  TASK_UNINTERRUPTIBLE);
		FUNC12(xas);
		FUNC11(xas);
		FUNC7();
		FUNC4(wq, &ewait.wait);
		FUNC10(xas);
	}
}