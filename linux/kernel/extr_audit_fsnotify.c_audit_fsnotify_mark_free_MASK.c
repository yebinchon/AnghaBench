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
struct audit_fsnotify_mark {struct audit_fsnotify_mark* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_fsnotify_mark*) ; 

__attribute__((used)) static void FUNC1(struct audit_fsnotify_mark *audit_mark)
{
	FUNC0(audit_mark->path);
	FUNC0(audit_mark);
}