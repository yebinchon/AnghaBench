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
struct esschan {int dummy; } ;
struct es1968 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR0_DATA_PORT ; 
 unsigned int FUNC0 (struct es1968*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct es1968 *chip, struct esschan *es)
{
	unsigned int cp1;
	unsigned int cp2;
	unsigned int diff;

	cp1 = FUNC0(chip, 0, 5);
	cp2 = FUNC0(chip, 1, 5);
	diff = (cp1 > cp2 ? cp1 - cp2 : cp2 - cp1);

	if (diff > 1)
		FUNC1(chip, IDR0_DATA_PORT, cp1);
}