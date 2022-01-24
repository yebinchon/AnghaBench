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
struct tcf_proto {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tcf_proto*,int /*<<< orphan*/ *,struct cls_bpf_prog*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(struct tcf_proto *tp,
				 struct cls_bpf_prog *prog,
				 struct netlink_ext_ack *extack)
{
	int err;

	err = FUNC0(tp, NULL, prog, extack);
	if (err)
		FUNC1("Stopping hardware offload failed: %d\n", err);
}