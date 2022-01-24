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
typedef  int /*<<< orphan*/  timer_t ;
struct signal_struct {int dummy; } ;
struct k_itimer {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct signal_struct* signal; } ;

/* Variables and functions */
 struct k_itimer* FUNC0 (struct hlist_head*,struct signal_struct*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 size_t FUNC1 (struct signal_struct*,int /*<<< orphan*/ ) ; 
 struct hlist_head* posix_timers_hashtable ; 

__attribute__((used)) static struct k_itimer *FUNC2(timer_t id)
{
	struct signal_struct *sig = current->signal;
	struct hlist_head *head = &posix_timers_hashtable[FUNC1(sig, id)];

	return FUNC0(head, sig, id);
}