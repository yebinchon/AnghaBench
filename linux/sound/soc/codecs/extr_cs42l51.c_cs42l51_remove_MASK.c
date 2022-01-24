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
struct device {int dummy; } ;
struct cs42l51_private {int /*<<< orphan*/  supplies; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cs42l51_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev)
{
	struct cs42l51_private *cs42l51 = FUNC1(dev);

	FUNC2(cs42l51->reset_gpio, 1);

	return FUNC3(FUNC0(cs42l51->supplies),
				      cs42l51->supplies);
}