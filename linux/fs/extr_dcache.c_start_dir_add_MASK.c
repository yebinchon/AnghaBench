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
struct inode {unsigned int i_dir_seq; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline unsigned FUNC2(struct inode *dir)
{

	for (;;) {
		unsigned n = dir->i_dir_seq;
		if (!(n & 1) && FUNC0(&dir->i_dir_seq, n, n + 1) == n)
			return n;
		FUNC1();
	}
}