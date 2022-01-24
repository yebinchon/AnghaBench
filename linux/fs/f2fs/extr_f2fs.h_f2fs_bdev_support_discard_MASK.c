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
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct block_device *bdev)
{
	return FUNC2(FUNC0(bdev)) ||
	       FUNC1(bdev);
}