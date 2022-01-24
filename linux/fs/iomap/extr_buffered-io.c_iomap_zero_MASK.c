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
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_NOFS ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct page**,struct iomap*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct page*,struct iomap*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, loff_t pos, unsigned offset,
		unsigned bytes, struct iomap *iomap)
{
	struct page *page;
	int status;

	status = FUNC0(inode, pos, bytes, AOP_FLAG_NOFS, &page,
				   iomap);
	if (status)
		return status;

	FUNC3(page, offset, bytes);
	FUNC2(page);

	return FUNC1(inode, pos, bytes, bytes, page, iomap);
}