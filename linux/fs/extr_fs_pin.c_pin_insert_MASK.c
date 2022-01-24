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
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct fs_pin {int /*<<< orphan*/  m_list; int /*<<< orphan*/  s_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt_pins; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pin_lock ; 
 TYPE_2__* FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fs_pin *pin, struct vfsmount *m)
{
	FUNC2(&pin_lock);
	FUNC0(&pin->s_list, &m->mnt_sb->s_pins);
	FUNC0(&pin->m_list, &FUNC1(m)->mnt_pins);
	FUNC3(&pin_lock);
}