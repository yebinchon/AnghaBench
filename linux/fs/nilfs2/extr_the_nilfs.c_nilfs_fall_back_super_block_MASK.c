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
struct the_nilfs {int /*<<< orphan*/ ** ns_sbp; int /*<<< orphan*/ ** ns_sbh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct the_nilfs *nilfs)
{
	FUNC0(nilfs->ns_sbh[0]);
	nilfs->ns_sbh[0] = nilfs->ns_sbh[1];
	nilfs->ns_sbp[0] = nilfs->ns_sbp[1];
	nilfs->ns_sbh[1] = NULL;
	nilfs->ns_sbp[1] = NULL;
}