#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct inode {TYPE_1__ i_ctime; TYPE_2__ i_mtime; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct inode *dir)
{
	time64_t t = FUNC2(dir->i_sb, FUNC1(dir->i_sb));
	if (t == dir->i_mtime.tv_sec &&
	    t == dir->i_ctime.tv_sec)
		return;
	dir->i_mtime.tv_sec = dir->i_ctime.tv_sec = t;
	dir->i_mtime.tv_nsec = dir->i_ctime.tv_nsec = 0;
	FUNC0(dir);
}