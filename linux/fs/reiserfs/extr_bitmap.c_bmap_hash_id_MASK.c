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
typedef  int u32 ;
struct super_block {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (char*,int) ; 
 unsigned int FUNC1 (struct super_block*) ; 

__attribute__((used)) static int FUNC2(struct super_block *s, u32 id)
{
	char *hash_in = NULL;
	unsigned long hash;
	unsigned bm;

	if (id <= 2) {
		bm = 1;
	} else {
		hash_in = (char *)(&id);
		hash = FUNC0(hash_in, 4);
		bm = hash % FUNC1(s);
		if (!bm)
			bm = 1;
	}
	/* this can only be true when SB_BMAP_NR = 1 */
	if (bm >= FUNC1(s))
		bm = 0;
	return bm;
}