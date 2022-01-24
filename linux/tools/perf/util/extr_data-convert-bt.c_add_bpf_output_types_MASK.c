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
struct TYPE_2__ {struct bt_ctf_field_type* u32_hex; struct bt_ctf_field_type* u32; } ;
struct ctf_writer {TYPE_1__ data; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bt_ctf_event_class*,struct bt_ctf_field_type*,char*) ; 
 struct bt_ctf_field_type* FUNC1 (struct bt_ctf_field_type*,char*) ; 

__attribute__((used)) static int FUNC2(struct ctf_writer *cw,
				struct bt_ctf_event_class *class)
{
	struct bt_ctf_field_type *len_type = cw->data.u32;
	struct bt_ctf_field_type *seq_base_type = cw->data.u32_hex;
	struct bt_ctf_field_type *seq_type;
	int ret;

	ret = FUNC0(class, len_type, "raw_len");
	if (ret)
		return ret;

	seq_type = FUNC1(seq_base_type, "raw_len");
	if (!seq_type)
		return -1;

	return FUNC0(class, seq_type, "raw_data");
}