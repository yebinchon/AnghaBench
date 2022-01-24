#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* owner; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {TYPE_3__ nfs_fl; } ;
struct file_lock {TYPE_1__ fl_u; } ;
struct TYPE_8__ {TYPE_2__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  h_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct file_lock *fl)
{
	FUNC2(&fl->fl_u.nfs_fl.owner->host->h_lock);
	FUNC0(&fl->fl_u.nfs_fl.list);
	FUNC3(&fl->fl_u.nfs_fl.owner->host->h_lock);
	FUNC1(fl->fl_u.nfs_fl.owner);
}