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
struct ceph_msg_data_cursor {size_t total_resid; int /*<<< orphan*/  data; } ;
struct ceph_msg {size_t data_length; int /*<<< orphan*/  data; int /*<<< orphan*/  num_data_items; struct ceph_msg_data_cursor cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_msg_data_cursor*) ; 

__attribute__((used)) static void FUNC2(struct ceph_msg *msg, size_t length)
{
	struct ceph_msg_data_cursor *cursor = &msg->cursor;

	FUNC0(!length);
	FUNC0(length > msg->data_length);
	FUNC0(!msg->num_data_items);

	cursor->total_resid = length;
	cursor->data = msg->data;

	FUNC1(cursor);
}