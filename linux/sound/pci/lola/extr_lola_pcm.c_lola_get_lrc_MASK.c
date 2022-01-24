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
struct lola {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR1 ; 
 int /*<<< orphan*/  LRC ; 
 unsigned int FUNC0 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct lola *chip)
{
	return FUNC0(chip, BAR1, LRC);
}