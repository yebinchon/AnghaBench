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

/* Variables and functions */
 scalar_t__ FSNOTIFY_OBJ_TYPE_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fsnotify_mark_connector *conn)
{
	if (!conn)
		return;

	FUNC3(&conn->lock);
	FUNC0(conn);
	FUNC4(&conn->lock);
	if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
		FUNC1(
					FUNC2(conn));
}