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
struct ubifs_info {int /*<<< orphan*/  calc_idx_sz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (struct ubifs_info*,int,int) ; 

__attribute__((used)) static int FUNC2(struct ubifs_info *c, int lnum, int dirt)
{
	c->calc_idx_sz -= FUNC0(dirt, 8);
	return FUNC1(c, lnum, dirt);
}