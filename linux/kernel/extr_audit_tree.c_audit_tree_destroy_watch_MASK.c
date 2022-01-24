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
 int /*<<< orphan*/  FUNC0 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  audit_tree_mark_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fsnotify_mark *mark)
{
	FUNC1(audit_tree_mark_cachep, FUNC0(mark));
}