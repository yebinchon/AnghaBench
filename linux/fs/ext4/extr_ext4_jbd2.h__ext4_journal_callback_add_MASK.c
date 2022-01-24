#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ext4_journal_cb_entry {int /*<<< orphan*/  jce_list; } ;
struct TYPE_5__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  t_private_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(handle_t *handle,
			struct ext4_journal_cb_entry *jce)
{
	/* Add the jce to transaction's private list */
	FUNC0(&jce->jce_list, &handle->h_transaction->t_private_list);
}