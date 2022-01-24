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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_fault {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_fault*) ; 
 scalar_t__ FUNC1 () ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_fault*) ; 

struct page *FUNC3(swp_entry_t entry, gfp_t gfp_mask,
				struct vm_fault *vmf)
{
	return FUNC1() ?
			FUNC2(entry, gfp_mask, vmf) :
			FUNC0(entry, gfp_mask, vmf);
}