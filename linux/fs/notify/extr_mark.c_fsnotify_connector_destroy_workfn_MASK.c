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
struct work_struct {int dummy; } ;
struct fsnotify_mark_connector {struct fsnotify_mark_connector* destroy_next; } ;

/* Variables and functions */
 struct fsnotify_mark_connector* connector_destroy_list ; 
 int /*<<< orphan*/  destroy_lock ; 
 int /*<<< orphan*/  fsnotify_mark_connector_cachep ; 
 int /*<<< orphan*/  fsnotify_mark_srcu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct fsnotify_mark_connector *conn, *free;

	FUNC1(&destroy_lock);
	conn = connector_destroy_list;
	connector_destroy_list = NULL;
	FUNC2(&destroy_lock);

	FUNC3(&fsnotify_mark_srcu);
	while (conn) {
		free = conn;
		conn = conn->destroy_next;
		FUNC0(fsnotify_mark_connector_cachep, free);
	}
}