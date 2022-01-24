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
struct lwtunnel_state {int dummy; } ;
struct bpf_lwt {int /*<<< orphan*/  xmit; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 struct bpf_lwt* FUNC0 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lwtunnel_state *lwt)
{
	struct bpf_lwt *bpf = FUNC0(lwt);

	FUNC1(&bpf->in);
	FUNC1(&bpf->out);
	FUNC1(&bpf->xmit);
}