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
struct ak4114 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  snd_ak4114_proc_regs_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct ak4114*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ak4114 *ak4114)
{
	FUNC0(ak4114->card, "ak4114", ak4114,
			     snd_ak4114_proc_regs_read);
}