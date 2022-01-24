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
struct dcb_app_type {int ifindex; int /*<<< orphan*/  list; int /*<<< orphan*/  app; } ;
struct dcb_app {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  dcb_app_list ; 
 struct dcb_app_type* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dcb_app const*,int) ; 

__attribute__((used)) static int FUNC3(const struct dcb_app *app, int ifindex)
{
	struct dcb_app_type *entry;

	entry = FUNC0(sizeof(*entry), GFP_ATOMIC);
	if (!entry)
		return -ENOMEM;

	FUNC2(&entry->app, app, sizeof(*app));
	entry->ifindex = ifindex;
	FUNC1(&entry->list, &dcb_app_list);

	return 0;
}