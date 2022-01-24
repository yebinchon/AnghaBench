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
struct hib_bio_batch {int /*<<< orphan*/  error; int /*<<< orphan*/  count; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static blk_status_t FUNC3(struct hib_bio_batch *hb)
{
	FUNC2(hb->wait, FUNC0(&hb->count) == 0);
	return FUNC1(hb->error);
}