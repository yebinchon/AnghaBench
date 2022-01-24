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
struct kernel_extent_ad {void* extLocation; void* extLength; } ;
struct extent_ad {int /*<<< orphan*/  extLocation; int /*<<< orphan*/  extLength; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct kernel_extent_ad FUNC1(struct extent_ad in)
{
	struct kernel_extent_ad out;

	out.extLength = FUNC0(in.extLength);
	out.extLocation = FUNC0(in.extLocation);

	return out;
}