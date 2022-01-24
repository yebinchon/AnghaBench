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
struct vmbus_channel {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct vmbus_channel *chan)
{
	struct sock *sk = FUNC0(chan);

	FUNC2(sk);
	FUNC1(FUNC5(sk), true);
	FUNC3(sk);

	/* Release the refcnt for the channel that's opened in
	 * hvs_open_connection().
	 */
	FUNC4(sk);
}