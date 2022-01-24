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
struct parse_events_state {TYPE_1__* error; } ;
struct list_head {int dummy; } ;
struct bpf_object {int dummy; } ;
struct __add_bpf_event_param {struct list_head* member_2; struct list_head* member_1; struct parse_events_state* member_0; } ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_2__ {void* str; void* help; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  add_bpf_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf__clear ; 
 int FUNC2 (struct bpf_object*,int /*<<< orphan*/ ,struct __add_bpf_event_param*) ; 
 int FUNC3 (struct bpf_object*) ; 
 int FUNC4 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_object*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_object*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 void* FUNC8 (char*) ; 

int FUNC9(struct parse_events_state *parse_state,
			      struct list_head *list,
			      struct bpf_object *obj,
			      struct list_head *head_config)
{
	int err;
	char errbuf[BUFSIZ];
	struct __add_bpf_event_param param = {parse_state, list, head_config};
	static bool registered_unprobe_atexit = false;

	if (FUNC0(obj) || !obj) {
		FUNC7(errbuf, sizeof(errbuf),
			 "Internal error: load bpf obj with NULL");
		err = -EINVAL;
		goto errout;
	}

	/*
	 * Register atexit handler before calling bpf__probe() so
	 * bpf__probe() don't need to unprobe probe points its already
	 * created when failure.
	 */
	if (!registered_unprobe_atexit) {
		FUNC1(bpf__clear);
		registered_unprobe_atexit = true;
	}

	err = FUNC4(obj);
	if (err) {
		FUNC6(obj, err, errbuf, sizeof(errbuf));
		goto errout;
	}

	err = FUNC3(obj);
	if (err) {
		FUNC5(obj, err, errbuf, sizeof(errbuf));
		goto errout;
	}

	err = FUNC2(obj, add_bpf_event, &param);
	if (err) {
		FUNC7(errbuf, sizeof(errbuf),
			 "Attach events in BPF object failed");
		goto errout;
	}

	return 0;
errout:
	parse_state->error->help = FUNC8("(add -v to see detail)");
	parse_state->error->str = FUNC8(errbuf);
	return err;
}