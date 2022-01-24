#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_READONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct mount *mnt)
{
	FUNC0();
	mnt->mnt.mnt_flags &= ~MNT_READONLY;
	FUNC1();
	return 0;
}