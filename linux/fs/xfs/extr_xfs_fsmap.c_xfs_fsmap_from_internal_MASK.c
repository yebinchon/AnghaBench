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
struct xfs_fsmap {int /*<<< orphan*/  fmr_length; int /*<<< orphan*/  fmr_offset; int /*<<< orphan*/  fmr_owner; int /*<<< orphan*/  fmr_physical; int /*<<< orphan*/  fmr_flags; int /*<<< orphan*/  fmr_device; } ;
struct fsmap {scalar_t__* fmr_reserved; void* fmr_length; void* fmr_offset; int /*<<< orphan*/  fmr_owner; void* fmr_physical; int /*<<< orphan*/  fmr_flags; int /*<<< orphan*/  fmr_device; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(
	struct fsmap		*dest,
	struct xfs_fsmap	*src)
{
	dest->fmr_device = src->fmr_device;
	dest->fmr_flags = src->fmr_flags;
	dest->fmr_physical = FUNC0(src->fmr_physical);
	dest->fmr_owner = src->fmr_owner;
	dest->fmr_offset = FUNC0(src->fmr_offset);
	dest->fmr_length = FUNC0(src->fmr_length);
	dest->fmr_reserved[0] = 0;
	dest->fmr_reserved[1] = 0;
	dest->fmr_reserved[2] = 0;
}