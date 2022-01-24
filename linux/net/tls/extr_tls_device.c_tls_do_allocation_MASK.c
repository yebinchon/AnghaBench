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
struct tls_offload_context_tx {int /*<<< orphan*/  open_record; } ;
struct sock {TYPE_1__* sk_prot; int /*<<< orphan*/  sk_allocation; } ;
struct page_frag {scalar_t__ size; scalar_t__ offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enter_memory_pressure ) (struct sock*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct page_frag*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,struct page_frag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct tls_offload_context_tx*,struct page_frag*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sock *sk,
			     struct tls_offload_context_tx *offload_ctx,
			     struct page_frag *pfrag,
			     size_t prepend_size)
{
	int ret;

	if (!offload_ctx->open_record) {
		if (FUNC5(!FUNC2(prepend_size, pfrag,
						   sk->sk_allocation))) {
			sk->sk_prot->enter_memory_pressure(sk);
			FUNC1(sk);
			return -ENOMEM;
		}

		ret = FUNC4(offload_ctx, pfrag, prepend_size);
		if (ret)
			return ret;

		if (pfrag->size > pfrag->offset)
			return 0;
	}

	if (!FUNC0(sk, pfrag))
		return -ENOMEM;

	return 0;
}