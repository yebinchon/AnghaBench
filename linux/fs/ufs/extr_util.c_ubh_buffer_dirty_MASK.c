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
struct ufs_buffer_head {unsigned int count; int /*<<< orphan*/ * bh; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1 (struct ufs_buffer_head * ubh)
{
	unsigned i;
	unsigned result = 0;
	if (!ubh)
		return 0;
	for ( i = 0; i < ubh->count; i++ )
		result |= FUNC0(ubh->bh[i]);
	return result;
}