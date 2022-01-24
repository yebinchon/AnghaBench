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
struct bio {int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*) ; 
 int /*<<< orphan*/  mpage_end_io ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static struct bio *FUNC3(int op, int op_flags, struct bio *bio)
{
	bio->bi_end_io = mpage_end_io;
	FUNC0(bio, op, op_flags);
	FUNC1(op, bio);
	FUNC2(bio);
	return NULL;
}