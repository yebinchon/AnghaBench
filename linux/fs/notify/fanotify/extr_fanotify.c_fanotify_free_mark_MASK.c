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
struct fsnotify_mark {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fanotify_mark_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fsnotify_mark*) ; 

__attribute__((used)) static void FUNC1(struct fsnotify_mark *fsn_mark)
{
	FUNC0(fanotify_mark_cache, fsn_mark);
}