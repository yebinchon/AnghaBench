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
struct fsnotify_mark_connector {scalar_t__ type; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  fsnotify_connp_t ;

/* Variables and functions */
 scalar_t__ FSNOTIFY_OBJ_TYPE_DETACHED ; 
 int /*<<< orphan*/  fsnotify_mark_srcu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsnotify_mark_connector* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct fsnotify_mark_connector *FUNC5(
						fsnotify_connp_t *connp)
{
	struct fsnotify_mark_connector *conn;
	int idx;

	idx = FUNC3(&fsnotify_mark_srcu);
	conn = FUNC2(*connp, &fsnotify_mark_srcu);
	if (!conn)
		goto out;
	FUNC0(&conn->lock);
	if (conn->type == FSNOTIFY_OBJ_TYPE_DETACHED) {
		FUNC1(&conn->lock);
		FUNC4(&fsnotify_mark_srcu, idx);
		return NULL;
	}
out:
	FUNC4(&fsnotify_mark_srcu, idx);
	return conn;
}