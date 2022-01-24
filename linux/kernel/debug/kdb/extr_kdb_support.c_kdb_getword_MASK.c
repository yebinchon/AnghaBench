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
typedef  unsigned long __u8 ;
typedef  unsigned long __u64 ;
typedef  unsigned long __u32 ;
typedef  unsigned long __u16 ;

/* Variables and functions */
 int KDB_BADWIDTH ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 

int FUNC2(unsigned long *word, unsigned long addr, size_t size)
{
	int diag;
	__u8  w1;
	__u16 w2;
	__u32 w4;
	__u64 w8;
	*word = 0;	/* Default value if addr or size is invalid */
	switch (size) {
	case 1:
		diag = FUNC0(w1, addr);
		if (!diag)
			*word = w1;
		break;
	case 2:
		diag = FUNC0(w2, addr);
		if (!diag)
			*word = w2;
		break;
	case 4:
		diag = FUNC0(w4, addr);
		if (!diag)
			*word = w4;
		break;
	case 8:
		if (size <= sizeof(*word)) {
			diag = FUNC0(w8, addr);
			if (!diag)
				*word = w8;
			break;
		}
		/* fall through */
	default:
		diag = KDB_BADWIDTH;
		FUNC1("kdb_getword: bad width %ld\n", (long) size);
	}
	return diag;
}