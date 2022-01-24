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
typedef  unsigned int u64 ;
struct ip_callchain {unsigned int nr; scalar_t__ ips; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_field {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;
struct bt_ctf_event {int dummy; } ;

/* Variables and functions */
 struct bt_ctf_field_type* FUNC0 (struct bt_ctf_event_class*,char*) ; 
 int FUNC1 (struct bt_ctf_event*,char*,struct bt_ctf_field*) ; 
 struct bt_ctf_field* FUNC2 (struct bt_ctf_field_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct bt_ctf_field*) ; 
 struct bt_ctf_field* FUNC4 (struct bt_ctf_field*,unsigned int) ; 
 int FUNC5 (struct bt_ctf_field*,struct bt_ctf_field*) ; 
 int /*<<< orphan*/  FUNC6 (struct bt_ctf_field_type*) ; 
 int FUNC7 (struct bt_ctf_field*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(struct bt_ctf_event_class *event_class,
		      struct bt_ctf_event *event,
		      struct ip_callchain *callchain)
{
	struct bt_ctf_field_type *len_type, *seq_type;
	struct bt_ctf_field *len_field, *seq_field;
	unsigned int nr_elements = callchain->nr;
	unsigned int i;
	int ret;

	len_type = FUNC0(
			event_class, "perf_callchain_size");
	len_field = FUNC2(len_type);
	if (!len_field) {
		FUNC8("failed to create 'perf_callchain_size' for callchain output event\n");
		ret = -1;
		goto put_len_type;
	}

	ret = FUNC7(len_field, nr_elements);
	if (ret) {
		FUNC8("failed to set field value for perf_callchain_size\n");
		goto put_len_field;
	}
	ret = FUNC1(event, "perf_callchain_size", len_field);
	if (ret) {
		FUNC8("failed to set payload to perf_callchain_size\n");
		goto put_len_field;
	}

	seq_type = FUNC0(
			event_class, "perf_callchain");
	seq_field = FUNC2(seq_type);
	if (!seq_field) {
		FUNC8("failed to create 'perf_callchain' for callchain output event\n");
		ret = -1;
		goto put_seq_type;
	}

	ret = FUNC5(seq_field, len_field);
	if (ret) {
		FUNC8("failed to set length of 'perf_callchain'\n");
		goto put_seq_field;
	}

	for (i = 0; i < nr_elements; i++) {
		struct bt_ctf_field *elem_field =
			FUNC4(seq_field, i);

		ret = FUNC7(elem_field,
				((u64 *)(callchain->ips))[i]);

		FUNC3(elem_field);
		if (ret) {
			FUNC8("failed to set callchain[%d]\n", i);
			goto put_seq_field;
		}
	}

	ret = FUNC1(event, "perf_callchain", seq_field);
	if (ret)
		FUNC8("failed to set payload for raw_data\n");

put_seq_field:
	FUNC3(seq_field);
put_seq_type:
	FUNC6(seq_type);
put_len_field:
	FUNC3(len_field);
put_len_type:
	FUNC6(len_type);
	return ret;
}