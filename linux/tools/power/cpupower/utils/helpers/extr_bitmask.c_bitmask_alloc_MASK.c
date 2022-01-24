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
struct bitmask {unsigned int size; scalar_t__ maskp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmask*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct bitmask* FUNC3 (int) ; 

struct bitmask *FUNC4(unsigned int n)
{
	struct bitmask *bmp;

	bmp = FUNC3(sizeof(*bmp));
	if (bmp == 0)
		return 0;
	bmp->size = n;
	bmp->maskp = FUNC0(FUNC2(n), sizeof(unsigned long));
	if (bmp->maskp == 0) {
		FUNC1(bmp);
		return 0;
	}
	return bmp;
}