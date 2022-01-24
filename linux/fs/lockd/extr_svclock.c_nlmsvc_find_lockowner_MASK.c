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
struct nlm_lockowner {int /*<<< orphan*/  list; int /*<<< orphan*/  host; int /*<<< orphan*/  pid; int /*<<< orphan*/  count; } ;
struct nlm_host {int /*<<< orphan*/  h_lock; int /*<<< orphan*/  h_lockowners; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nlm_lockowner* FUNC0 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_lockowner*) ; 
 struct nlm_lockowner* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nlm_lockowner *FUNC8(struct nlm_host *host, pid_t pid)
{
	struct nlm_lockowner *res, *new = NULL;

	FUNC6(&host->h_lock);
	res = FUNC0(host, pid);

	if (res == NULL) {
		FUNC7(&host->h_lock);
		new = FUNC2(sizeof(*res), GFP_KERNEL);
		FUNC6(&host->h_lock);
		res = FUNC0(host, pid);
		if (res == NULL && new != NULL) {
			res = new;
			/* fs/locks.c will manage the refcount through lock_ops */
			FUNC5(&new->count, 1);
			new->pid = pid;
			new->host = FUNC4(host);
			FUNC3(&new->list, &host->h_lockowners);
			new = NULL;
		}
	}

	FUNC7(&host->h_lock);
	FUNC1(new);
	return res;
}