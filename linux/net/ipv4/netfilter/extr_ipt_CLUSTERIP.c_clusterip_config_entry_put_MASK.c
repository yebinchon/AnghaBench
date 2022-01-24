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
struct clusterip_net {int /*<<< orphan*/  mutex; scalar_t__ procdir; int /*<<< orphan*/  lock; } ;
struct clusterip_config {int /*<<< orphan*/  pde; int /*<<< orphan*/  list; int /*<<< orphan*/  entries; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 struct clusterip_net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC9(struct clusterip_config *c)
{
	struct clusterip_net *cn = FUNC0(c->net);

	FUNC2();
	if (FUNC7(&c->entries, &cn->lock)) {
		FUNC1(&c->list);
		FUNC8(&cn->lock);
		FUNC3();
		/* In case anyone still accesses the file, the open/close
		 * functions are also incrementing the refcount on their own,
		 * so it's safe to remove the entry even if it's in use. */
#ifdef CONFIG_PROC_FS
		mutex_lock(&cn->mutex);
		if (cn->procdir)
			proc_remove(c->pde);
		mutex_unlock(&cn->mutex);
#endif
		return;
	}
	FUNC3();
}