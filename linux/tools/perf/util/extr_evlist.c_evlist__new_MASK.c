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
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evlist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct evlist* FUNC1 (int) ; 

struct evlist *FUNC2(void)
{
	struct evlist *evlist = FUNC1(sizeof(*evlist));

	if (evlist != NULL)
		FUNC0(evlist, NULL, NULL);

	return evlist;
}