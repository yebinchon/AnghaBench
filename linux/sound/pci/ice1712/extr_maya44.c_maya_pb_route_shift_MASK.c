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

__attribute__((used)) static int FUNC0(int idx)
{
	static const unsigned char shift[10] =
		{ 8, 20, 0, 3, 11, 23, 14, 26, 17, 29 };
	return shift[idx % 10];
}