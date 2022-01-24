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
struct tty_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_4__ {int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tty_struct* FUNC2 (int /*<<< orphan*/ ) ; 

struct tty_struct *FUNC3(void)
{
	struct tty_struct *tty = NULL;
	unsigned long flags;

	FUNC0(&current->sighand->siglock, flags);
	if (current->signal)
		tty = FUNC2(current->signal->tty);
	FUNC1(&current->sighand->siglock, flags);
	return tty;
}