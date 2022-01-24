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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int const) ; 

int FUNC1(const u8 *build_id, int len, char *bf)
{
	char *bid = bf;
	const u8 *raw = build_id;
	int i;

	for (i = 0; i < len; ++i) {
		FUNC0(bid, "%02x", *raw);
		++raw;
		bid += 2;
	}

	return (bid - bf) + 1;
}