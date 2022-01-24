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
struct fsnotify_mark_connector {struct fsnotify_mark_connector* destroy_next; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct fsnotify_mark {int /*<<< orphan*/  g_list; int /*<<< orphan*/  connector; int /*<<< orphan*/  obj_list; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 unsigned int FSNOTIFY_OBJ_TYPE_DETACHED ; 
 int /*<<< orphan*/  FSNOTIFY_REAPER_DELAY ; 
 struct fsnotify_mark_connector* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark_connector*) ; 
 struct fsnotify_mark_connector* connector_destroy_list ; 
 int /*<<< orphan*/  connector_reaper_work ; 
 int /*<<< orphan*/  destroy_list ; 
 int /*<<< orphan*/  destroy_lock ; 
 void* FUNC3 (struct fsnotify_mark_connector*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reaper_work ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

void FUNC15(struct fsnotify_mark *mark)
{
	struct fsnotify_mark_connector *conn = FUNC0(mark->connector);
	void *objp = NULL;
	unsigned int type = FSNOTIFY_OBJ_TYPE_DETACHED;
	bool free_conn = false;

	/* Catch marks that were actually never attached to object */
	if (!conn) {
		if (FUNC12(&mark->refcnt))
			FUNC5(mark);
		return;
	}

	/*
	 * We have to be careful so that traversals of obj_list under lock can
	 * safely grab mark reference.
	 */
	if (!FUNC11(&mark->refcnt, &conn->lock))
		return;

	FUNC6(&mark->obj_list);
	if (FUNC7(&conn->list)) {
		objp = FUNC3(conn, &type);
		free_conn = true;
	} else {
		FUNC2(conn);
	}
	FUNC1(mark->connector, NULL);
	FUNC14(&conn->lock);

	FUNC4(type, objp);

	if (free_conn) {
		FUNC13(&destroy_lock);
		conn->destroy_next = connector_destroy_list;
		connector_destroy_list = conn;
		FUNC14(&destroy_lock);
		FUNC10(system_unbound_wq, &connector_reaper_work);
	}
	/*
	 * Note that we didn't update flags telling whether inode cares about
	 * what's happening with children. We update these flags from
	 * __fsnotify_parent() lazily when next event happens on one of our
	 * children.
	 */
	FUNC13(&destroy_lock);
	FUNC8(&mark->g_list, &destroy_list);
	FUNC14(&destroy_lock);
	FUNC9(system_unbound_wq, &reaper_work,
			   FSNOTIFY_REAPER_DELAY);
}