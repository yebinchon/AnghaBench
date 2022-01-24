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
struct gfs2_quota {int dummy; } ;
struct gfs2_inode {int dummy; } ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int FUNC0 (struct gfs2_inode*,unsigned long,unsigned int,void*,unsigned int) ; 
 unsigned int FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct gfs2_inode *ip, struct gfs2_quota *qp,
				 loff_t loc)
{
	unsigned long pg_beg;
	unsigned pg_off, nbytes, overflow = 0;
	int pg_oflow = 0, error;
	void *ptr;

	nbytes = sizeof(struct gfs2_quota);

	pg_beg = loc >> PAGE_SHIFT;
	pg_off = FUNC1(loc);

	/* If the quota straddles a page boundary, split the write in two */
	if ((pg_off + nbytes) > PAGE_SIZE) {
		pg_oflow = 1;
		overflow = (pg_off + nbytes) - PAGE_SIZE;
	}

	ptr = qp;
	error = FUNC0(ip, pg_beg, pg_off, ptr,
				       nbytes - overflow);
	/* If there's an overflow, write the remaining bytes to the next page */
	if (!error && pg_oflow)
		error = FUNC0(ip, pg_beg + 1, 0,
					       ptr + nbytes - overflow,
					       overflow);
	return error;
}