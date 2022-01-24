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
typedef  int /*<<< orphan*/  u32 ;
struct lx6464es {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct lx6464es *chip, u32 pipe, int is_capture)
{
	int err;

	err = FUNC1(chip, pipe, is_capture);
	if (err < 0)
		return err;

	err = FUNC0(chip, pipe, is_capture);

	return err;
}