#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ext4_ext_path {scalar_t__ p_block; TYPE_1__* p_hdr; int /*<<< orphan*/ * p_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  eh_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ext4_ext_path *path)
{
	FUNC0(path->p_idx == NULL);

	if (path->p_idx < FUNC1(path->p_hdr))
		return 0;

	/*
	 * if truncate on deeper level happened, it wasn't partial,
	 * so we have to consider current index for truncation
	 */
	if (FUNC2(path->p_hdr->eh_entries) == path->p_block)
		return 0;
	return 1;
}