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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  hidp_session_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(wait_queue_entry_t *wait,
				      unsigned int mode,
				      int sync, void *key)
{
	FUNC0(&hidp_session_wq);
	return false;
}