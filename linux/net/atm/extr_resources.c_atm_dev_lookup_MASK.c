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
struct atm_dev {int dummy; } ;

/* Variables and functions */
 struct atm_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  atm_dev_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct atm_dev *FUNC3(int number)
{
	struct atm_dev *dev;

	FUNC1(&atm_dev_mutex);
	dev = FUNC0(number);
	FUNC2(&atm_dev_mutex);
	return dev;
}