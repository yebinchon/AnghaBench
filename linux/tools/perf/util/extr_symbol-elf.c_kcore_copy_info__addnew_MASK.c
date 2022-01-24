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
typedef  int /*<<< orphan*/  u64 ;
struct phdr_data {int /*<<< orphan*/  node; } ;
struct kcore_copy_info {int /*<<< orphan*/  phdrs; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phdr_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phdr_data *FUNC2(struct kcore_copy_info *kci,
						 u64 addr, u64 len,
						 off_t offset)
{
	struct phdr_data *p = FUNC1(addr, len, offset);

	if (p)
		FUNC0(&p->node, &kci->phdrs);

	return p;
}