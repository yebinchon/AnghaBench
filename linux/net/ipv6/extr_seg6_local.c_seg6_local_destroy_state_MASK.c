#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  prog; int /*<<< orphan*/  name; } ;
struct seg6_local_lwt {TYPE_2__ bpf; TYPE_1__* desc; int /*<<< orphan*/  srh; } ;
struct lwtunnel_state {int dummy; } ;
struct TYPE_3__ {int attrs; } ;

/* Variables and functions */
 int SEG6_LOCAL_BPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct seg6_local_lwt* FUNC2 (struct lwtunnel_state*) ; 

__attribute__((used)) static void FUNC3(struct lwtunnel_state *lwt)
{
	struct seg6_local_lwt *slwt = FUNC2(lwt);

	FUNC1(slwt->srh);

	if (slwt->desc->attrs & (1 << SEG6_LOCAL_BPF)) {
		FUNC1(slwt->bpf.name);
		FUNC0(slwt->bpf.prog);
	}

	return;
}