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
struct cs4281 {int midcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_MIDCR ; 
 int BA0_MIDCR_MRST ; 
 int /*<<< orphan*/  FUNC0 (struct cs4281*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct cs4281 *chip)
{
	FUNC0(chip, BA0_MIDCR, chip->midcr | BA0_MIDCR_MRST);
	FUNC1(100);
	FUNC0(chip, BA0_MIDCR, chip->midcr);
}