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
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_2__ {void* str; void* help; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int ENOTSUP ; 
 scalar_t__ FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bpf_object*) ; 
 struct bpf_object* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  obj_head_config ; 
 int FUNC6 (struct parse_events_state*,struct bpf_object*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct parse_events_state*,struct list_head*,struct bpf_object*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct list_head*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (char*) ; 

int FUNC11(struct parse_events_state *parse_state,
			  struct list_head *list,
			  char *bpf_file_name,
			  bool source,
			  struct list_head *head_config)
{
	int err;
	struct bpf_object *obj;
	FUNC1(obj_head_config);

	if (head_config)
		FUNC9(head_config, &obj_head_config);

	obj = FUNC3(bpf_file_name, source);
	if (FUNC0(obj)) {
		char errbuf[BUFSIZ];

		err = FUNC2(obj);

		if (err == -ENOTSUP)
			FUNC8(errbuf, sizeof(errbuf),
				 "BPF support is not compiled");
		else
			FUNC4(bpf_file_name,
						   source,
						   -err, errbuf,
						   sizeof(errbuf));

		parse_state->error->help = FUNC10("(add -v to see detail)");
		parse_state->error->str = FUNC10(errbuf);
		return err;
	}

	err = FUNC7(parse_state, list, obj, head_config);
	if (err)
		return err;
	err = FUNC6(parse_state, obj, &obj_head_config);

	/*
	 * Caller doesn't know anything about obj_head_config,
	 * so combine them together again before returnning.
	 */
	if (head_config)
		FUNC5(&obj_head_config, head_config);
	return err;
}