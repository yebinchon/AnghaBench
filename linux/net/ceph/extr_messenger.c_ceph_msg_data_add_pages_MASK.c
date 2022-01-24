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
struct page {int dummy; } ;
struct ceph_msg_data {size_t length; size_t alignment; struct page** pages; int /*<<< orphan*/  type; } ;
struct ceph_msg {size_t data_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_MSG_DATA_PAGES ; 
 size_t PAGE_MASK ; 
 struct ceph_msg_data* FUNC1 (struct ceph_msg*) ; 

void FUNC2(struct ceph_msg *msg, struct page **pages,
		size_t length, size_t alignment)
{
	struct ceph_msg_data *data;

	FUNC0(!pages);
	FUNC0(!length);

	data = FUNC1(msg);
	data->type = CEPH_MSG_DATA_PAGES;
	data->pages = pages;
	data->length = length;
	data->alignment = alignment & ~PAGE_MASK;

	msg->data_length += length;
}