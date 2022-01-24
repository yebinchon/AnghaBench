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
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx_dev*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct azx *chip, struct azx_dev *azx_dev)
{
	return FUNC1(FUNC0(azx_dev));
}