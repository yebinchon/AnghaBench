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
struct buffer_head {int b_size; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 int BLKH_SIZE ; 
 struct block_head* FUNC0 (struct buffer_head*) ; 
 int IH_SIZE ; 
 int FUNC1 (struct block_head*) ; 
 int FUNC2 (struct block_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,struct buffer_head*) ; 

__attribute__((used)) static void FUNC4(struct buffer_head *bh)
{
	struct block_head *blkh;
	int nr;

	blkh = FUNC0(bh);
	nr = FUNC2(blkh);
	if (nr > (bh->b_size - BLKH_SIZE) / IH_SIZE)
		FUNC3(NULL, "vs-6010", "invalid item number %z",
			       bh);
	if (FUNC1(blkh) > bh->b_size - BLKH_SIZE - IH_SIZE * nr)
		FUNC3(NULL, "vs-6020", "invalid free space %z",
			       bh);

}