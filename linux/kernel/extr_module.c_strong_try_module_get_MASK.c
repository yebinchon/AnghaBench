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
struct module {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENOENT ; 
 scalar_t__ MODULE_STATE_COMING ; 
 scalar_t__ MODULE_STATE_UNFORMED ; 
 scalar_t__ FUNC1 (struct module*) ; 

__attribute__((used)) static inline int FUNC2(struct module *mod)
{
	FUNC0(mod && mod->state == MODULE_STATE_UNFORMED);
	if (mod && mod->state == MODULE_STATE_COMING)
		return -EBUSY;
	if (FUNC1(mod))
		return 0;
	else
		return -ENOENT;
}