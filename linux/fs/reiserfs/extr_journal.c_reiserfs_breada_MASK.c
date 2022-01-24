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
struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ b_blocknr_t ;

/* Variables and functions */
 int BUFNR ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 struct buffer_head* FUNC0 (struct block_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC5(struct block_device *dev,
					   b_blocknr_t block, int bufsize,
					   b_blocknr_t max_block)
{
	struct buffer_head *bhlist[BUFNR];
	unsigned int blocks = BUFNR;
	struct buffer_head *bh;
	int i, j;

	bh = FUNC0(dev, block, bufsize);
	if (FUNC2(bh))
		return (bh);

	if (block + BUFNR > max_block) {
		blocks = max_block - block;
	}
	bhlist[0] = bh;
	j = 1;
	for (i = 1; i < blocks; i++) {
		bh = FUNC0(dev, block + i, bufsize);
		if (FUNC2(bh)) {
			FUNC1(bh);
			break;
		} else
			bhlist[j++] = bh;
	}
	FUNC3(REQ_OP_READ, 0, j, bhlist);
	for (i = 1; i < j; i++)
		FUNC1(bhlist[i]);
	bh = bhlist[0];
	FUNC4(bh);
	if (FUNC2(bh))
		return bh;
	FUNC1(bh);
	return NULL;
}