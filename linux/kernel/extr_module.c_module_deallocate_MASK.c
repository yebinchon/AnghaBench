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
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct module {TYPE_2__ core_layout; TYPE_1__ init_layout; } ;
struct load_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 

__attribute__((used)) static void FUNC3(struct module *mod, struct load_info *info)
{
	FUNC2(mod);
	FUNC0(mod);
	FUNC1(mod->init_layout.base);
	FUNC1(mod->core_layout.base);
}