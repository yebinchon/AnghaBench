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
typedef  int /*<<< orphan*/  word ;
typedef  unsigned long __u8 ;
typedef  unsigned long __u64 ;
typedef  unsigned long __u32 ;
typedef  unsigned long __u16 ;

/* Variables and functions */
 int KDB_BADWIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int FUNC1 (unsigned long,unsigned long) ; 

int FUNC2(unsigned long addr, unsigned long word, size_t size)
{
	int diag;
	__u8  w1;
	__u16 w2;
	__u32 w4;
	__u64 w8;
	switch (size) {
	case 1:
		w1 = word;
		diag = FUNC1(addr, w1);
		break;
	case 2:
		w2 = word;
		diag = FUNC1(addr, w2);
		break;
	case 4:
		w4 = word;
		diag = FUNC1(addr, w4);
		break;
	case 8:
		if (size <= sizeof(word)) {
			w8 = word;
			diag = FUNC1(addr, w8);
			break;
		}
		/* fall through */
	default:
		diag = KDB_BADWIDTH;
		FUNC0("kdb_putword: bad width %ld\n", (long) size);
	}
	return diag;
}