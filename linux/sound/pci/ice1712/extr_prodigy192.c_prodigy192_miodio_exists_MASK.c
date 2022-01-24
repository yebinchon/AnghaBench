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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 unsigned char AK4114_REG_INT0_MASK ; 
 unsigned char const FUNC0 (struct snd_ice1712*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned char,unsigned char const) ; 

__attribute__((used)) static int FUNC2(struct snd_ice1712 *ice)
{

	unsigned char orig_value;
	const unsigned char test_data = 0xd1;	/* random value */
	unsigned char addr = AK4114_REG_INT0_MASK; /* random SAFE address */
	int exists = 0;

	orig_value = FUNC0(ice, addr);
	FUNC1(ice, addr, test_data);
	if (FUNC0(ice, addr) == test_data) {
		/* ak4114 seems to communicate, apparently exists */
		/* writing back original value */
		FUNC1(ice, addr, orig_value);
		exists = 1;
	}
	return exists;
}