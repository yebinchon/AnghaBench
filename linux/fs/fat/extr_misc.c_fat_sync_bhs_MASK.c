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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ) ; 

int FUNC3(struct buffer_head **bhs, int nr_bhs)
{
	int i, err = 0;

	for (i = 0; i < nr_bhs; i++)
		FUNC2(bhs[i], 0);

	for (i = 0; i < nr_bhs; i++) {
		FUNC1(bhs[i]);
		if (!err && !FUNC0(bhs[i]))
			err = -EIO;
	}
	return err;
}