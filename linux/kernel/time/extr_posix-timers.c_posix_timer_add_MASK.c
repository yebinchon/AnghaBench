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
struct signal_struct {int posix_timer_id; } ;
struct k_itimer {int /*<<< orphan*/  t_hash; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct signal_struct* signal; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct hlist_head*,struct signal_struct*,int) ; 
 TYPE_1__* current ; 
 size_t FUNC1 (struct signal_struct*,int) ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct hlist_head* posix_timers_hashtable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct k_itimer *timer)
{
	struct signal_struct *sig = current->signal;
	int first_free_id = sig->posix_timer_id;
	struct hlist_head *head;
	int ret = -ENOENT;

	do {
		FUNC3(&hash_lock);
		head = &posix_timers_hashtable[FUNC1(sig, sig->posix_timer_id)];
		if (!FUNC0(head, sig, sig->posix_timer_id)) {
			FUNC2(&timer->t_hash, head);
			ret = sig->posix_timer_id;
		}
		if (++sig->posix_timer_id < 0)
			sig->posix_timer_id = 0;
		if ((sig->posix_timer_id == first_free_id) && (ret == -ENOENT))
			/* Loop over all possible ids completed */
			ret = -EAGAIN;
		FUNC4(&hash_lock);
	} while (ret == -ENOENT);
	return ret;
}