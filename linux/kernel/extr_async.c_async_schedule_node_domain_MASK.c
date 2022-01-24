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
struct async_entry {int /*<<< orphan*/  work; int /*<<< orphan*/  global_list; int /*<<< orphan*/  domain_list; scalar_t__ cookie; struct async_domain* domain; void* data; int /*<<< orphan*/  (* func ) (void*,scalar_t__) ;} ;
struct async_domain {scalar_t__ registered; int /*<<< orphan*/  pending; } ;
typedef  int /*<<< orphan*/  (* async_func_t ) (void*,scalar_t__) ;
typedef  scalar_t__ async_cookie_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_WORK ; 
 int /*<<< orphan*/  PF_USED_ASYNC ; 
 int /*<<< orphan*/  async_global_pending ; 
 int /*<<< orphan*/  async_lock ; 
 int /*<<< orphan*/  async_run_entry_fn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  entry_count ; 
 int /*<<< orphan*/  FUNC4 (struct async_entry*) ; 
 struct async_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next_cookie ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

async_cookie_t FUNC10(async_func_t func, void *data,
					  int node, struct async_domain *domain)
{
	struct async_entry *entry;
	unsigned long flags;
	async_cookie_t newcookie;

	/* allow irq-off callers */
	entry = FUNC5(sizeof(struct async_entry), GFP_ATOMIC);

	/*
	 * If we're out of memory or if there's too much work
	 * pending already, we execute synchronously.
	 */
	if (!entry || FUNC3(&entry_count) > MAX_WORK) {
		FUNC4(entry);
		FUNC8(&async_lock, flags);
		newcookie = next_cookie++;
		FUNC9(&async_lock, flags);

		/* low on memory.. run synchronously */
		func(data, newcookie);
		return newcookie;
	}
	FUNC0(&entry->domain_list);
	FUNC0(&entry->global_list);
	FUNC1(&entry->work, async_run_entry_fn);
	entry->func = func;
	entry->data = data;
	entry->domain = domain;

	FUNC8(&async_lock, flags);

	/* allocate cookie and queue */
	newcookie = entry->cookie = next_cookie++;

	FUNC6(&entry->domain_list, &domain->pending);
	if (domain->registered)
		FUNC6(&entry->global_list, &async_global_pending);

	FUNC2(&entry_count);
	FUNC9(&async_lock, flags);

	/* mark that this task has queued an async job, used by module init */
	current->flags |= PF_USED_ASYNC;

	/* schedule for execution */
	FUNC7(node, system_unbound_wq, &entry->work);

	return newcookie;
}