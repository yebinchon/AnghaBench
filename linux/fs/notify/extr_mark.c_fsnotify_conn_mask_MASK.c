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
struct fsnotify_mark_connector {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__u32 FUNC3(struct fsnotify_mark_connector *conn)
{
	if (FUNC0(!FUNC2(conn->type)))
		return 0;

	return *FUNC1(conn);
}