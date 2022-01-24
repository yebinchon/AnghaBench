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
struct file {int f_mode; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HTREE_EOF_32BIT ; 
 int /*<<< orphan*/  EXT4_HTREE_EOF_64BIT ; 
 int FMODE_32BITHASH ; 
 int FMODE_64BITHASH ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline loff_t FUNC1(struct file *filp)
{
	if ((filp->f_mode & FMODE_32BITHASH) ||
	    (!(filp->f_mode & FMODE_64BITHASH) && FUNC0()))
		return EXT4_HTREE_EOF_32BIT;
	else
		return EXT4_HTREE_EOF_64BIT;
}