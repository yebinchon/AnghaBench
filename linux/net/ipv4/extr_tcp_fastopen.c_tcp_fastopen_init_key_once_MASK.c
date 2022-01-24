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
typedef  int /*<<< orphan*/  u8 ;
struct tcp_fastopen_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_fastopen_ctx; } ;
struct net {TYPE_1__ ipv4; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int TCP_FASTOPEN_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct tcp_fastopen_context* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct net *net)
{
	u8 key[TCP_FASTOPEN_KEY_LENGTH];
	struct tcp_fastopen_context *ctxt;

	FUNC2();
	ctxt = FUNC1(net->ipv4.tcp_fastopen_ctx);
	if (ctxt) {
		FUNC3();
		return;
	}
	FUNC3();

	/* tcp_fastopen_reset_cipher publishes the new context
	 * atomically, so we allow this race happening here.
	 *
	 * All call sites of tcp_fastopen_cookie_gen also check
	 * for a valid cookie, so this is an acceptable risk.
	 */
	FUNC0(key, sizeof(key));
	FUNC4(net, NULL, key, NULL);
}