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
struct bitstr {int* cur; int bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitstr*) ; 

__attribute__((used)) static unsigned int FUNC1(struct bitstr *bs)
{
	unsigned int b = (*bs->cur) & (0x80 >> bs->bit);

	FUNC0(bs);

	return b;
}