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
struct TYPE_6__ {int /*<<< orphan*/  mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  inode; } ;
struct TYPE_4__ {int offset; int /*<<< orphan*/  ptr; } ;
union futex_key {TYPE_3__ private; TYPE_2__ shared; TYPE_1__ both; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MMU ; 
#define  FUT_OFF_INODE 129 
#define  FUT_OFF_MMSHARED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(union futex_key *key)
{
	if (!key->both.ptr) {
		/* If we're here then we tried to put a key we failed to get */
		FUNC1(1);
		return;
	}

	if (!FUNC0(CONFIG_MMU))
		return;

	switch (key->both.offset & (FUT_OFF_INODE|FUT_OFF_MMSHARED)) {
	case FUT_OFF_INODE:
		FUNC2(key->shared.inode);
		break;
	case FUT_OFF_MMSHARED:
		FUNC3(key->private.mm);
		break;
	}
}