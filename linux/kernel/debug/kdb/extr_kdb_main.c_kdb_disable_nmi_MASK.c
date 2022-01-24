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
struct TYPE_2__ {int /*<<< orphan*/  (* enable_nmi ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__ arch_kgdb_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kdb_nmi_disabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int argc, const char *argv[])
{
	if (FUNC0(&kdb_nmi_disabled))
		return 0;
	FUNC1(&kdb_nmi_disabled, 1);
	arch_kgdb_ops.enable_nmi(0);
	return 0;
}