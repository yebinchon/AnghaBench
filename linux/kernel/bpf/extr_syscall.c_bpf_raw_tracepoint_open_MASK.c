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
struct TYPE_2__ {int /*<<< orphan*/  prog_fd; int /*<<< orphan*/  name; } ;
union bpf_attr {TYPE_1__ raw_tracepoint; } ;
typedef  int /*<<< orphan*/  tp_name ;
struct bpf_raw_tracepoint {struct bpf_raw_event_map* btp; struct bpf_prog* prog; } ;
struct bpf_raw_event_map {int dummy; } ;
struct bpf_prog {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BPF_PROG_TYPE_RAW_TRACEPOINT ; 
 scalar_t__ BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_USER ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC1 (struct bpf_prog*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,struct bpf_raw_tracepoint*,int /*<<< orphan*/ ) ; 
 struct bpf_raw_event_map* FUNC3 (char*) ; 
 int FUNC4 (struct bpf_raw_event_map*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_raw_event_map*,struct bpf_prog*) ; 
 struct bpf_prog* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_raw_event_map*) ; 
 int /*<<< orphan*/  bpf_raw_tp_fops ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_raw_tracepoint*) ; 
 struct bpf_raw_tracepoint* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const union bpf_attr *attr)
{
	struct bpf_raw_tracepoint *raw_tp;
	struct bpf_raw_event_map *btp;
	struct bpf_prog *prog;
	char tp_name[128];
	int tp_fd, err;

	if (FUNC11(tp_name, FUNC12(attr->raw_tracepoint.name),
			      sizeof(tp_name) - 1) < 0)
		return -EFAULT;
	tp_name[sizeof(tp_name) - 1] = 0;

	btp = FUNC3(tp_name);
	if (!btp)
		return -ENOENT;

	raw_tp = FUNC10(sizeof(*raw_tp), GFP_USER);
	if (!raw_tp) {
		err = -ENOMEM;
		goto out_put_btp;
	}
	raw_tp->btp = btp;

	prog = FUNC6(attr->raw_tracepoint.prog_fd);
	if (FUNC0(prog)) {
		err = FUNC1(prog);
		goto out_free_tp;
	}
	if (prog->type != BPF_PROG_TYPE_RAW_TRACEPOINT &&
	    prog->type != BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE) {
		err = -EINVAL;
		goto out_put_prog;
	}

	err = FUNC4(raw_tp->btp, prog);
	if (err)
		goto out_put_prog;

	raw_tp->prog = prog;
	tp_fd = FUNC2("bpf-raw-tracepoint", &bpf_raw_tp_fops, raw_tp,
				 O_CLOEXEC);
	if (tp_fd < 0) {
		FUNC5(raw_tp->btp, prog);
		err = tp_fd;
		goto out_put_prog;
	}
	return tp_fd;

out_put_prog:
	FUNC7(prog);
out_free_tp:
	FUNC9(raw_tp);
out_put_btp:
	FUNC8(btp);
	return err;
}