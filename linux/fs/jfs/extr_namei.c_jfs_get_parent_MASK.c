#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  idotdot; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
struct TYPE_6__ {TYPE_2__ i_dtroot; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC5(struct dentry *dentry)
{
	unsigned long parent_ino;

	parent_ino =
		FUNC4(FUNC0(FUNC1(dentry))->i_dtroot.header.idotdot);

	return FUNC2(FUNC3(dentry->d_sb, parent_ino));
}