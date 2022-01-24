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
struct nf_hook_state {scalar_t__ sk; scalar_t__ out; scalar_t__ in; } ;
struct nf_queue_entry {int /*<<< orphan*/  skb; struct nf_hook_state state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct nf_queue_entry *entry)
{
	struct nf_hook_state *state = &entry->state;

	/* Release those devices we held, or Alexey will kill me. */
	if (state->in)
		FUNC0(state->in);
	if (state->out)
		FUNC0(state->out);
	if (state->sk)
		FUNC2(state->sk);

	FUNC1(entry->skb);
}