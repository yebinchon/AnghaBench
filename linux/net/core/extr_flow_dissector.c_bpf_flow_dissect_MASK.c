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
typedef  scalar_t__ u32 ;
struct bpf_prog {int dummy; } ;
struct bpf_flow_keys {int nhoff; int thoff; unsigned int flags; int /*<<< orphan*/  n_proto; } ;
struct bpf_flow_dissector {struct bpf_flow_keys* flow_keys; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG ; 
 scalar_t__ BPF_FLOW_DISSECTOR_F_STOP_AT_ENCAP ; 
 scalar_t__ BPF_FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ; 
 scalar_t__ BPF_OK ; 
 scalar_t__ FUNC0 (struct bpf_prog*,struct bpf_flow_dissector*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FLOW_DISSECTOR_F_PARSE_1ST_FRAG ; 
 scalar_t__ FLOW_DISSECTOR_F_STOP_AT_ENCAP ; 
 scalar_t__ FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_flow_keys*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  u16 ; 

bool FUNC6(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
		      __be16 proto, int nhoff, int hlen, unsigned int flags)
{
	struct bpf_flow_keys *flow_keys = ctx->flow_keys;
	u32 result;

	/* Pass parameters to the BPF program */
	FUNC3(flow_keys, 0, sizeof(*flow_keys));
	flow_keys->n_proto = proto;
	flow_keys->nhoff = nhoff;
	flow_keys->thoff = flow_keys->nhoff;

	FUNC1((int)BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG !=
		     (int)FLOW_DISSECTOR_F_PARSE_1ST_FRAG);
	FUNC1((int)BPF_FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL !=
		     (int)FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL);
	FUNC1((int)BPF_FLOW_DISSECTOR_F_STOP_AT_ENCAP !=
		     (int)FLOW_DISSECTOR_F_STOP_AT_ENCAP);
	flow_keys->flags = flags;

	FUNC4();
	result = FUNC0(prog, ctx);
	FUNC5();

	flow_keys->nhoff = FUNC2(u16, flow_keys->nhoff, nhoff, hlen);
	flow_keys->thoff = FUNC2(u16, flow_keys->thoff,
				   flow_keys->nhoff, hlen);

	return result == BPF_OK;
}