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
struct big_key_buf {int nr_pages; scalar_t__* pages; scalar_t__ virt; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct big_key_buf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct big_key_buf *buf)
{
	unsigned int i;

	if (buf->virt) {
		FUNC2(buf->virt, 0, buf->nr_pages * PAGE_SIZE);
		FUNC3(buf->virt);
	}

	for (i = 0; i < buf->nr_pages; i++)
		if (buf->pages[i])
			FUNC0(buf->pages[i]);

	FUNC1(buf);
}