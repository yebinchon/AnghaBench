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
struct nlm_lockowner {int /*<<< orphan*/  list; int /*<<< orphan*/  host; int /*<<< orphan*/  pid; int /*<<< orphan*/  owner; int /*<<< orphan*/  count; } ;
struct nlm_host {int /*<<< orphan*/  h_lock; int /*<<< orphan*/  h_lockowners; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nlm_host*) ; 
 struct nlm_lockowner* FUNC1 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_lockowner*) ; 
 struct nlm_lockowner* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nlm_lockowner *FUNC9(struct nlm_host *host, fl_owner_t owner)
{
	struct nlm_lockowner *res, *new = NULL;

	FUNC7(&host->h_lock);
	res = FUNC1(host, owner);
	if (res == NULL) {
		FUNC8(&host->h_lock);
		new = FUNC3(sizeof(*new), GFP_KERNEL);
		FUNC7(&host->h_lock);
		res = FUNC1(host, owner);
		if (res == NULL && new != NULL) {
			res = new;
			FUNC6(&new->count, 1);
			new->owner = owner;
			new->pid = FUNC0(host);
			new->host = FUNC5(host);
			FUNC4(&new->list, &host->h_lockowners);
			new = NULL;
		}
	}
	FUNC8(&host->h_lock);
	FUNC2(new);
	return res;
}