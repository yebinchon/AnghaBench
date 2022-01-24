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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_prog {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  res; int /*<<< orphan*/  link; int /*<<< orphan*/  handle; } ;
struct cls_bpf_head {int /*<<< orphan*/  handle_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cls_bpf_prog*) ; 
 int /*<<< orphan*/  cls_bpf_delete_prog_work ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct cls_bpf_prog*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cls_bpf_head* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct tcf_proto *tp, struct cls_bpf_prog *prog,
			     struct netlink_ext_ack *extack)
{
	struct cls_bpf_head *head = FUNC4(tp->root);

	FUNC2(&head->handle_idr, prog->handle);
	FUNC1(tp, prog, extack);
	FUNC3(&prog->link);
	FUNC7(tp, &prog->res);
	if (FUNC5(&prog->exts))
		FUNC6(&prog->rwork, cls_bpf_delete_prog_work);
	else
		FUNC0(prog);
}