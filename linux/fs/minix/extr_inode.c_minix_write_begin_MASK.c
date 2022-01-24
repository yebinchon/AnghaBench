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
struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int FUNC0 (struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minix_get_block ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata)
{
	int ret;

	ret = FUNC0(mapping, pos, len, flags, pagep,
				minix_get_block);
	if (FUNC2(ret))
		FUNC1(mapping, pos + len);

	return ret;
}