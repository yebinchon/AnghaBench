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
struct trace_event_call {int dummy; } ;
struct prog_entry {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int /*<<< orphan*/  prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FILT_ERR_MISSING_QUOTE ; 
 int /*<<< orphan*/  FILT_ERR_TOO_MANY_CLOSE ; 
 int /*<<< orphan*/  FILT_ERR_TOO_MANY_OPEN ; 
 scalar_t__ FUNC0 (struct prog_entry*) ; 
#define  MISSING_QUOTE 129 
 int FUNC1 (struct prog_entry*) ; 
#define  TOO_MANY_OPEN 128 
 int FUNC2 (char const*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct filter_parse_error*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  parse_pred ; 
 struct prog_entry* FUNC4 (char const*,int,int,int /*<<< orphan*/ ,struct trace_event_call*,struct filter_parse_error*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct prog_entry*) ; 

__attribute__((used)) static int FUNC6(struct trace_event_call *call,
			 const char *filter_string,
			 struct event_filter *filter,
			 struct filter_parse_error *pe)
{
	struct prog_entry *prog;
	int nr_parens;
	int nr_preds;
	int index;
	int ret;

	ret = FUNC2(filter_string, &nr_parens, &nr_preds, &index);
	if (ret < 0) {
		switch (ret) {
		case MISSING_QUOTE:
			FUNC3(pe, FILT_ERR_MISSING_QUOTE, index);
			break;
		case TOO_MANY_OPEN:
			FUNC3(pe, FILT_ERR_TOO_MANY_OPEN, index);
			break;
		default:
			FUNC3(pe, FILT_ERR_TOO_MANY_CLOSE, index);
		}
		return ret;
	}

	if (!nr_preds)
		return -EINVAL;

	prog = FUNC4(filter_string, nr_parens, nr_preds,
			       parse_pred, call, pe);
	if (FUNC0(prog))
		return FUNC1(prog);

	FUNC5(filter->prog, prog);
	return 0;
}