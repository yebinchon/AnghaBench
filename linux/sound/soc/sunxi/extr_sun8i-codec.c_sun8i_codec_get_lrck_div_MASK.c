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

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(unsigned int channels,
				    unsigned int word_size)
{
	unsigned int div = word_size * channels;

	if (div < 16 || div > 256)
		return -EINVAL;

	return FUNC0(div) - 4;
}