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
struct evlist {int bkw_mmap_state; int /*<<< orphan*/  overwrite_mmap; } ;
typedef  enum bkw_mmap_state { ____Placeholder_bkw_mmap_state } bkw_mmap_state ;

/* Variables and functions */
#define  BKW_MMAP_DATA_PENDING 131 
#define  BKW_MMAP_EMPTY 130 
#define  BKW_MMAP_NOTREADY 129 
#define  BKW_MMAP_RUNNING 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct evlist*) ; 

void FUNC3(struct evlist *evlist,
				  enum bkw_mmap_state state)
{
	enum bkw_mmap_state old_state = evlist->bkw_mmap_state;
	enum action {
		NONE,
		PAUSE,
		RESUME,
	} action = NONE;

	if (!evlist->overwrite_mmap)
		return;

	switch (old_state) {
	case BKW_MMAP_NOTREADY: {
		if (state != BKW_MMAP_RUNNING)
			goto state_err;
		break;
	}
	case BKW_MMAP_RUNNING: {
		if (state != BKW_MMAP_DATA_PENDING)
			goto state_err;
		action = PAUSE;
		break;
	}
	case BKW_MMAP_DATA_PENDING: {
		if (state != BKW_MMAP_EMPTY)
			goto state_err;
		break;
	}
	case BKW_MMAP_EMPTY: {
		if (state != BKW_MMAP_RUNNING)
			goto state_err;
		action = RESUME;
		break;
	}
	default:
		FUNC0(1, "Shouldn't get there\n");
	}

	evlist->bkw_mmap_state = state;

	switch (action) {
	case PAUSE:
		FUNC1(evlist);
		break;
	case RESUME:
		FUNC2(evlist);
		break;
	case NONE:
	default:
		break;
	}

state_err:
	return;
}