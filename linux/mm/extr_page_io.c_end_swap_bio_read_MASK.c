#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {struct task_struct* bi_private; TYPE_1__ bi_iter; scalar_t__ bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 struct page* FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static void FUNC14(struct bio *bio)
{
	struct page *page = FUNC7(bio);
	struct task_struct *waiter = bio->bi_private;

	if (bio->bi_status) {
		FUNC3(page);
		FUNC0(page);
		FUNC10("Read-error on swap-device (%u:%u:%llu)\n",
			 FUNC1(FUNC6(bio)), FUNC2(FUNC6(bio)),
			 (unsigned long long)bio->bi_iter.bi_sector);
		goto out;
	}

	FUNC4(page);
	FUNC12(page);
out:
	FUNC13(page);
	FUNC5(bio->bi_private, NULL);
	FUNC8(bio);
	if (waiter) {
		FUNC9(waiter);
		FUNC11(waiter);
	}
}