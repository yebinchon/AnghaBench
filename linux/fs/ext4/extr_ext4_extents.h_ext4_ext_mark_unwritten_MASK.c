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
struct ext4_extent {int /*<<< orphan*/  ee_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXT_INIT_MAX_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ext4_extent *ext)
{
	/* We can not have an unwritten extent of zero length! */
	FUNC0((FUNC2(ext->ee_len) & ~EXT_INIT_MAX_LEN) == 0);
	ext->ee_len |= FUNC1(EXT_INIT_MAX_LEN);
}