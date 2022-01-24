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
struct evsel {int /*<<< orphan*/  is_pos; int /*<<< orphan*/  id_pos; } ;
struct evlist {int /*<<< orphan*/  is_pos; int /*<<< orphan*/  id_pos; } ;

/* Variables and functions */
 struct evsel* FUNC0 (struct evlist*) ; 

void FUNC1(struct evlist *evlist)
{
	struct evsel *first = FUNC0(evlist);

	evlist->id_pos = first->id_pos;
	evlist->is_pos = first->is_pos;
}