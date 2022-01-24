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
 int GDLM_LVB_SIZE ; 
 int JID_BITMAP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(char *lvb)
{
	return !FUNC0(lvb + JID_BITMAP_OFFSET, 0,
			GDLM_LVB_SIZE - JID_BITMAP_OFFSET);
}