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
struct kgdb_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMREGBYTES ; 
 int /*<<< orphan*/  FUNC0 (struct kgdb_state*) ; 
 scalar_t__ gdb_regs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remcom_out_buffer ; 

__attribute__((used)) static void FUNC2(struct kgdb_state *ks)
{
	FUNC0(ks);
	FUNC1((char *)gdb_regs, remcom_out_buffer, NUMREGBYTES);
}